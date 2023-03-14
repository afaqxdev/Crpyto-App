// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_print

import 'dart:async';
import 'dart:developer';

import 'package:cryptotracker/Core/Models/cryptocurrenct.dart';
import 'package:cryptotracker/Core/Shared%20Preferences/local_storage.dart';
import 'package:flutter/widgets.dart';

import '../../../Core/Api Call/api.dart';
import '../../../Core/Shared Preferences/prices.dart';

class MarketProvider with ChangeNotifier {
  bool isloading = true;
  bool isCalled = false;
  List<CryptoCurrency> markets = [];
  List<Price> prices = [];

  MarketProvider() {
    fetchData();
  }

  Future<void> fetchData() async {
    // log("Refreshed");
    List<dynamic> _markets = await API.getMarkets();
    List<String> favorites = await localStorage.fetchFav();
    List<CryptoCurrency> temp = [];
    for (var market in _markets) {
      CryptoCurrency newCrypto = CryptoCurrency.fromJson(market);

      if (favorites.contains(newCrypto.id)) {
        newCrypto.isFavorites = true;
      }
      temp.add(newCrypto);
    }
    // log(temp.toString());
    markets = temp;
    isloading = false;
    notifyListeners();
    Timer(const Duration(seconds: 30), () {
      fetchData();

      log("Crypto data request send");
    });
  }

  Future<void> fetchGraphData(String id) async {
    if (!isCalled) {
      List<dynamic> _prices = await API.fetchPrices(id);
      List<Price> temp = [];
      log("Graph data request send");
      // log(_prices.toString());
      for (var price in _prices) {
        temp.add(Price.fromJson(price));
      }
      // log(temp.toString());
      prices = temp;
      isCalled = true;
      notifyListeners();
    }
  }

  CryptoCurrency fetchCryptoById(String id) {
    CryptoCurrency crypto =
        markets.where((element) => element.id == id).toList()[0];

    return crypto;
  }

  Future<void> addFav(CryptoCurrency crypto) async {
    int indexOfCrypto = markets.indexOf(crypto);
    markets[indexOfCrypto].isFavorites = true;
    await localStorage.addFav(crypto.id!);
    notifyListeners();
  }

  Future<void> removeFav(CryptoCurrency crypto) async {
    int indexOfCrypto = markets.indexOf(crypto);
    markets[indexOfCrypto].isFavorites = false;
    await localStorage.removeFav(crypto.id!);
    notifyListeners();
  }
}

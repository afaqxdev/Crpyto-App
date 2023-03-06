import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../Core/Models/cryptocurrenct.dart';
import '../../../../Core/Providers/market_provider.dart';
import '../Crypto List/cryptoListTile.dart';

class Markert extends StatefulWidget {
  const Markert({super.key});

  @override
  State<Markert> createState() => _MarkertState();
}

class _MarkertState extends State<Markert> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MarketProvider>(builder: (context, marketProvider, child) {
      if (marketProvider.isloading == true) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        if (marketProvider.markets.isNotEmpty) {
          marketProvider.isCalled = false;
          return RefreshIndicator(
            onRefresh: () => marketProvider.fetchData(),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: marketProvider.markets.length,
              itemBuilder: ((context, index) {
                CryptoCurrency currentCrypto = marketProvider.markets[index];
                return Container(
                    padding: const EdgeInsets.all(3.5),
                    child: CryptoListTile(currentCrypto: currentCrypto));
              }),
            ),
          );
        } else {
          return const Center(
            child: Text("Something went wrong"),
          );
        }
      }
    });
  }
}

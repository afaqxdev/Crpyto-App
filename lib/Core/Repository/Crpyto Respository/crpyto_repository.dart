import 'dart:async';

import '../../Data/Network/network_api_services.dart';
import '../../Model/crpyto_model.dart';
import '../../Resources/Api Url/api_url.dart';

class CrpytoRespository {
  List<CrpytoModel> markets = [];

  final _apiService = NetworkApiService();
  Future<void> crpytoRespository() async {
    List<dynamic> _markets = await _apiService.getCrpytoApi(ApiUrl.apiUrl);
    for (var market in _markets) {
      CrpytoModel newCrypto = CrpytoModel.fromJson(market);
    }
  }
}

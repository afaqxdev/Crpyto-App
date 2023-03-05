import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../../App Exception/app_exception.dart';
import 'base_api_service.dart';

class NetworkApiService extends BaseApiService {
  @override
  Future<dynamic> getCrpytoApi(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequrstTimeOut {
      throw RequrstTimeOut('');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var decodedResponse = jsonDecode(response.body);

        return decodedResponse;
      case 400:
        dynamic respnoseJson = jsonDecode(response.body);
        return respnoseJson;

      default:
        throw FetchDataException(
            'Error while Communication with server${response.statusCode}');
    }
  }
}

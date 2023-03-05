import 'dart:html';

import 'package:get/get.dart';

import '../../../../Core/Data/Response/status.dart';
import '../../../../Core/Model/crpyto_model.dart';
import '../../../../Core/Repository/Crpyto Respository/crpyto_repository.dart';

class CrpytoController extends GetxController {
  final api = CrpytoRespository();
  final rxRequestStatus = Status.LOADING.obs;
  final crpytoModel = CrpytoModel().obs;
  RxString error = ''.obs;

  void setRxRequest(Status _vlaue) => rxRequestStatus.value = _vlaue;
  void setUserList(List<dynamic> _value) =>
      crpytoModel.value = _value as CrpytoModel;
  void setError(String _vlaue) => error.value = _vlaue;

  void crpytoCoinModel() {
    api.crpytoRespository().then((value) {
      setUserList(value);
      setRxRequest(Status.COMPLETE);
    }).onError((error, stackTrace) {
      setError(error.toString());
      setRxRequest(Status.ERRO);
    });
  }

  // void refreshuserApi() {
  //   setRxRequest(Status.LOADING);
  //   api.userListApi().then((value) {
  //     setRxRequest(Status.COMPELET);
  //     setUserList(value);
  //   }).onError((error, stackTrace) {
  //     setError(error.toString());
  //     setRxRequest(Status.ERROR);
  //   });
  // }
}

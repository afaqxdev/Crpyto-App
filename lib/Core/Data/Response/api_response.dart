import 'package:cypyto_base/Core/Data/Response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;
  ApiResponse(this.message, this.status, this.data);
  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.Error(this.message) : status = Status.ERRO;
  ApiResponse.Complete(this.data) : status = Status.COMPLETE;
  @override
  String toString() {
    return 'Status :$status \n Message :$message \n Data :$data';
  }
}

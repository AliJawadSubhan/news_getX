


import 'package:get_x_practicee/data/response/status.dart';

class ApiResponse<T> {
  ApiStatus? status;
  T? data;
  String? message;
  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() : status = ApiStatus.loading;

  ApiResponse.error(this.message) : status = ApiStatus.error;

  ApiResponse.computed(this.data) : status = ApiStatus.computed;
  @override
  String toString() {
    return "Status: $status  Message: $message, Data : $data";
  }
}
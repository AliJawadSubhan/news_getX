import 'package:get_x_practicee/data/networks/network_api.dart';
import 'package:get_x_practicee/resources/api_urls/urls.dart';

class LoginRepositry {
  final _apiServices = NetworkApiService();

  Future loginRepositry(var data) async {
    dynamic response = _apiServices.sendApiServices(ApiURls.loginApi, data);
    return response;
  }
}

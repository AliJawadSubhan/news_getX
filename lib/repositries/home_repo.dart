import 'package:get_x_practicee/data/networks/network_api.dart';
import 'package:get_x_practicee/models/user_model.dart';
import 'package:get_x_practicee/resources/api_urls/urls.dart';
// import 'package:http/http.dart';

class HomeRepo {
  final _apiServices = NetworkApiService();

  Future<News> homerep() async {
    dynamic response = await  _apiServices.fetchApiServices(ApiURls.usersApi);
    return News.fromJson(response);
  }
}

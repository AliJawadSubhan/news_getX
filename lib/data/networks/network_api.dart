import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:get_x_practicee/data/app_exceptions.dart';
import 'package:get_x_practicee/data/networks/base_network.dart';
import 'package:http/http.dart' as https;

class NetworkApiService extends BaseApiServices {
  dynamic responseJson;
  @override
  Future<dynamic> fetchApiServices(String url) async {
    try {
      final response =
          await https.get(Uri.parse(url)).timeout(const Duration(seconds: 12));
      responseJson = returnResopnse(response);
    } on SocketException {
      throw InternetException('Your wifi is bad.');
    } on TimeOutExceptions {
      throw TimeOutExceptions('Time out ');
    }
    return responseJson;
  }

  @override
  Future sendApiServices(String url, data) async {
    log('$data log sendApiService $url');
    try {
      final response = await https
          .post(
            Uri.parse(url),
            body: data,
          )
          .timeout(const Duration(seconds: 12));
      responseJson = returnResopnse(response);
    } on SocketException {
      throw InternetException('Your wifi is bad.');
    } on TimeoutException {
      throw TimeOutExceptions('Time out');
    }
    log(responseJson.toString());
    return responseJson;
  }

  dynamic returnResopnse(https.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw InvalidUrl('Bro what');
      default:
        throw FetchDataException('Error communicating ${response.statusCode}');
    }
  }
}

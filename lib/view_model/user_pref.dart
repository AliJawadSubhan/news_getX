import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_x_practicee/models/login_reponse_model.dart' show LoginResponseModel;
import 'package:shared_preferences/shared_preferences.dart';

class UserPreference extends GetxController {
  Future<bool> saveUser(LoginResponseModel loginResponseModel) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    try {
      sp.setString(
        'token',
        loginResponseModel.token.toString(),
      );
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<LoginResponseModel> getUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? token = sp.getString('token');
    return LoginResponseModel(token: token);
  }

  Future<bool> removeUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.remove('token');
    return true;
  }
}

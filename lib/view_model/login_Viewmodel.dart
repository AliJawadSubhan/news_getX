// ignore_for_file: file_names

import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_x_practicee/models/login_reponse_model.dart';
import 'package:get_x_practicee/models/user_input_model.dart';
import 'package:get_x_practicee/repositries/login_repo.dart';
import 'package:get_x_practicee/resources/routes/routes_name.dart';
import 'package:get_x_practicee/utils/utils.dart';
import 'package:get_x_practicee/view_model/user_pref.dart';

class LoginViewController extends GetxController {
  UserPreference userPreference = UserPreference();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  RxBool isLoading = false.obs;
  final _loginRepo = LoginRepositry();

  loginApi() {
    isLoading.value = true;
    var data =
        UserInput(email: 'eve.holt@reqres.in', password: 'cityslicka').toJson();
    _loginRepo.loginRepositry(data).then((value) {
        userPreference.saveUser(LoginResponseModel.fromJson(value));

        log('value: ' + value.toString());
        isLoading.value = false;

        Utils.toastMessage('login is very much success', 'Logged In');

        Get.toNamed(RoutesName.homeView);
      },
    ).onError(
      (error, stackTrace) {
        isLoading.value = false;
        Utils.toastMessage(error.toString(), 'Error!');
      },
    );
  }
}

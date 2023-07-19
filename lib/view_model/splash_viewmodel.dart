import 'dart:async';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_x_practicee/resources/routes/routes_name.dart';
import 'package:get_x_practicee/view_model/user_pref.dart';

// import 'lib/resources/routes/routes.dart';
class SplashServices {
  UserPreference userPreference = UserPreference();

  isLogin() {
    userPreference.getUser().then((val) {
      log(val.token.toString());
      if (val.token == '' || val.token.toString() == 'null') {
        Timer(const Duration(seconds: 2),
            () => Get.offAndToNamed(RoutesName.loginView));
      } else {
        Timer(const Duration(seconds: 1),
            () => Get.offAndToNamed(RoutesName.homeView));
      }
    });
  }
}

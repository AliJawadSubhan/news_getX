import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_x_practicee/data/response/status.dart';
import 'package:get_x_practicee/models/user_model.dart';
import 'package:get_x_practicee/repositries/home_repo.dart';

class HomeViewModel extends GetxController {
  final requestState = ApiStatus.loading.obs;
  Rx<News> rxNews = News().obs;
  RxString error = ''.obs;

  void setRxStatus(ApiStatus status) {
    requestState.value = status;
  }

  void setNewsList(News news) {
    rxNews.value = news;
  }
  void setError(String value) {
    error.value = value;
  }

  final homeRepositry = HomeRepo();

  void fetchNews() {
    homeRepositry.homerep().then((value) {
      setRxStatus(ApiStatus.loading);
      setNewsList(value);
      setRxStatus(ApiStatus.computed);
    }).onError((error, stackTrace) {
      log(error.toString());
      setError(error.toString());
      setRxStatus(ApiStatus.error);
    });
  }
}

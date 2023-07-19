import 'package:get/get.dart';
import 'package:get_x_practicee/resources/routes/routes_name.dart';
import 'package:get_x_practicee/views/home_view.dart';
import 'package:get_x_practicee/views/login_View.dart';
import 'package:get_x_practicee/views/splash_View.dart';

class AppRoutes {
  static appRoutes() {
    return [
      GetPage(
        page: () => const SplashView(),
        name: RoutesName.splashView,
        transition: Transition.rightToLeft,
      ),
      GetPage(
        page: () => LoginView(),
        name: RoutesName.loginView,
        transition: Transition.rightToLeft,
      ),
      GetPage(
        page: () => HomeView(),
        name: RoutesName.homeView,
        transition: Transition.rightToLeft,
      ),
    ];
  }
}

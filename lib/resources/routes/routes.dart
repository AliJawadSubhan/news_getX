import 'package:get/get.dart';
import 'package:get_x_practicee/resources/routes/routes_name.dart';
import 'package:get_x_practicee/views/splash_View.dart';

class AppRoutes {
  static appRoutes() {
    return [
      GetPage(
        page: () => SplashView(),
        name: RoutesName.splashView,
        transition: Transition.rightToLeft,
      ),
    ];
  }
}

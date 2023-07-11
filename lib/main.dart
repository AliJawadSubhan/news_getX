import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practicee/resources/language/getx_loca.dart';
import 'package:get_x_practicee/resources/routes/routes.dart';
import 'package:get_x_practicee/views/splash_View.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey[50],
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          primary: Colors.indigo,
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      translations: LanguageGetx(),
      home: SplashView(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}

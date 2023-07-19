import 'package:flutter/material.dart';
import 'package:get_x_practicee/view_model/splash_viewmodel.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  SplashServices services = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    services.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash Screen', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 3,
      ),
      // backgroundColor: Colors.indigo[200],
      body: const Center(
        child: Text('You have been missed'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practicee/utils/componenets/primaryButton.dart';
import 'package:get_x_practicee/utils/utils.dart';
import 'package:get_x_practicee/view_model/login_Viewmodel.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final loginController = Get.put(LoginViewController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: loginController.emailController.value,
              focusNode: loginController.emailFocusNode.value,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              onFieldSubmitted: (v) {
                Utils.fieldFocusChance(
                    context,
                    loginController.emailFocusNode.value,
                    loginController.passwordFocusNode.value);
              },
              controller: loginController.passwordController.value,
              focusNode: loginController.passwordFocusNode.value,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(() {
                return PrimaryButton(
                  onpress: () {
                    loginController.loginApi();
                  },
                  mainText: 'Login',
                  loading: loginController.isLoading.value,
                  width: double.infinity,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

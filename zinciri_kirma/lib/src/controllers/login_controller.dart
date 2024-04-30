import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final loginFormKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void onInit() {
    // Simulating obtaining the user name from some local storage
    usernameController.text = 'test_user';
    super.onInit();
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  String? validator(String? value) {
    if (value!.isEmpty) {
      return 'Please this field must be filled';
    }
    return null;
  }

  void login() {
    if (loginFormKey.currentState!.validate()) {
      checkUser(usernameController.text, passwordController.text).then((auth) {
        if (auth) {
          Get.snackbar('Login', 'Login successfully');
          Get.toNamed('/home');
        } else {
          Get.snackbar('Login', 'Invalid username or password');
        }
        passwordController.clear();
      });
    }
  }

  // Api Simulation
  Future<bool> checkUser(String user, String password) {
    if (user == 'test_user' && password == '12345') {
      return Future.value(true);
    }
    return Future.value(false);
  }
}

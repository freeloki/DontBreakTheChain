import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zinciri_kirma/src/controllers/home_controller.dart';

import 'src/controllers/login_controller.dart';
import 'src/controllers/objective_controller.dart';
import 'src/pages/home.dart';
import 'src/pages/login_page.dart';
import 'src/pages/objective.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/login',
    getPages: [
      GetPage(
        name: '/login',
        page: () => LoginPage(),
        binding: LoginBinding(),
      ),
      GetPage(
        name: '/home',
        page: () => HomePage(),
        binding: HomeBinding(),
      ),
      GetPage(
        name: '/objective',
        page: () => Objective(),
        binding: ObjectiveBinding(),
      )
    ],
  ));
}

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageController());
  }
}

class ObjectiveBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ObjectiveController());
  }
}

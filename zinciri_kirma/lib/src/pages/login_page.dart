import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Zinciri Kırma')),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: controller.loginFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller.usernameController,
                decoration: const InputDecoration(labelText: 'Username'),
                validator: controller.validator,
              ),
              TextFormField(
                controller: controller.passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                validator: controller.validator,
                obscureText: true,
              ),
              ElevatedButton(
                child: Text('Login'),
                onPressed: controller.login,
              )
            ],
          ),
        ),
      ),
    );
  }
}

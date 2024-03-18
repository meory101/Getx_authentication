import 'package:authentication/main.dart';
import 'package:authentication/utils/http_components/http_methods.dart';
import 'package:authentication/utils/links.dart';
import 'package:authentication/views/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void Login() async {
    Map body = {
      "email": "${email.text}",
      "password": "${password.text}",
    };
    var response = await PostMethod(Linkes.login, body);
    if (response['status'] == 'success') {
      prefs.setString("token", "${response['token']}");
      Get.to(() => Home());
    } else {
      print('${response['message']}');
    }
  }
}

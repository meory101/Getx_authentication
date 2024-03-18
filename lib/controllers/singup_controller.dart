import 'package:authentication/main.dart';
import 'package:authentication/utils/http_components/http_methods.dart';
import 'package:authentication/utils/links.dart';
import 'package:authentication/views/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void SignUp() async {
    Map body = {
      "name": "${name.text}",
      "email": "${email.text}",
      "password": "${password.text}",
      "roleid": "1"
    };
    var response = await PostMethod(Linkes.signup, body);
    if (response['status'] == 'success') {
      prefs.setString("token", "${response['token']}");
      Get.to(() => Home());
    } else {
      print('${response['message']}');
    }
  }
}

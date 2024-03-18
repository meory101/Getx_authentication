import 'package:authentication/main.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (prefs.getString("token") != null) {
      return RouteSettings(name: "home");
    } else {
      return RouteSettings(name: "/account");
    }
  }
}

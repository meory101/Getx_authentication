import 'package:authentication/middleware/auth_middleware.dart';
import 'package:authentication/utils/bindings/auth_bindings.dart';
import 'package:authentication/views/auth/create_account.dart';
import 'package:authentication/views/auth/login.dart';
import 'package:authentication/views/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  runApp(const Authentication());
}

class Authentication extends StatelessWidget {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AuthBindings(),
      getPages: [
        GetPage(
          name: '/',
          page: () => Login(),
          middlewares: [
            AuthMiddleware()
          ]
        ),
        GetPage(
          name: '/account',
          page: () => CreateAccount(),
        ),
         GetPage(
          name: '/home',
          page: () => Home(),
        )
      ],
    );
  }
}

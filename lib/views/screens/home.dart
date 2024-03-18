import 'package:authentication/main.dart';
import 'package:authentication/theme/colors.dart';
import 'package:authentication/theme/fonts.dart';
import 'package:authentication/views/auth/login.dart';
import 'package:authentication/views/components/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('${prefs.getString("token")}'),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Button(
                label: 'Logout',
                height: 50,
                width: 120,
                onTap: () {
                  prefs.clear();
                  Get.to(() => Login());
                },
                labelstyle: AppFonts.whitefont,
                boxcolor: Appcolors.maincolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

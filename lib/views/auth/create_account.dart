import 'package:authentication/controllers/singup_controller.dart';
import 'package:authentication/theme/colors.dart';
import 'package:authentication/theme/fonts.dart';
import 'package:authentication/views/auth/login.dart';
import 'package:authentication/views/components/button.dart';
import 'package:authentication/views/components/text_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    SignupController controller = Get.find();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('you have an account?'),
          Button(
            labelstyle: AppFonts.amberfont,
            boxcolor: Colors.transparent,
            label: 'login',
            height: 50,
            width: 60,
            onTap: () {
              Get.off(() => Login(),
                  duration: Duration(seconds: 1), curve: Curves.ease);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 15,
                top: MediaQuery.of(context).size.height / 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create an Account',
                  style: AppFonts.mainfont,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'please Create an Account to continue',
                  style: AppFonts.greyfont,
                ),
                const SizedBox(
                  height: 40,
                ),
                TextForm(
                  controller: controller.name,
                  hint: 'Name',
                  prefix: const Icon(CupertinoIcons.mail),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextForm(
                  controller: controller.email,
                  hint: 'Email',
                  prefix: const Icon(CupertinoIcons.mail),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextForm(
                  controller: controller.password,
                  hint: 'Password',
                  prefix: const Icon(CupertinoIcons.lock),
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Button(
                    labelstyle: AppFonts.whitefont,
                    boxcolor: Appcolors.maincolor,
                    label: 'Create an Account',
                    height: 50,
                    width: 200,
                    onTap: controller.SignUp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

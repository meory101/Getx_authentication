import 'package:authentication/controllers/login_controller.dart';
import 'package:authentication/controllers/singup_controller.dart';
import 'package:get/get.dart';

class AuthBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(), fenix: true);
    Get.lazyPut(() => SignupController(), fenix: true);
  }
}

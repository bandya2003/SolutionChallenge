import '../controller/google_login_controller.dart';
import 'package:get/get.dart';

class GoogleLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GoogleLoginController());
  }
}

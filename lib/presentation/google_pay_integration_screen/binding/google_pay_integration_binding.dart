import '../controller/google_pay_integration_controller.dart';
import 'package:get/get.dart';

class GooglePayIntegrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GooglePayIntegrationController());
  }
}

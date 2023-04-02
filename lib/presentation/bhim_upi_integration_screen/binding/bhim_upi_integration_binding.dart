import '../controller/bhim_upi_integration_controller.dart';
import 'package:get/get.dart';

class BhimUpiIntegrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BhimUpiIntegrationController());
  }
}

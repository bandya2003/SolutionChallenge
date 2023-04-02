import '../controller/qr_codes_controller.dart';
import 'package:get/get.dart';

class QrCodesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrCodesController());
  }
}

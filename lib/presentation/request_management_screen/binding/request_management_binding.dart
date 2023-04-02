import '../controller/request_management_controller.dart';
import 'package:get/get.dart';

class RequestManagementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RequestManagementController());
  }
}

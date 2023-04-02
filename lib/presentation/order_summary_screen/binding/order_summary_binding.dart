import '../controller/order_summary_controller.dart';
import 'package:get/get.dart';

class OrderSummaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderSummaryController());
  }
}

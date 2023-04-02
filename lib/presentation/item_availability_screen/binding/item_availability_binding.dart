import '../controller/item_availability_controller.dart';
import 'package:get/get.dart';

class ItemAvailabilityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemAvailabilityController());
  }
}

import '../controller/item_grouper_controller.dart';
import 'package:get/get.dart';

class ItemGrouperBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemGrouperController());
  }
}

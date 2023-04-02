import '../controller/advanced_search_controller.dart';
import 'package:get/get.dart';

class AdvancedSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdvancedSearchController());
  }
}

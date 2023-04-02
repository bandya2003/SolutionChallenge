import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/presentation/store_locator_screen/models/store_locator_model.dart';

class StoreLocatorController extends GetxController {
  Rx<StoreLocatorModel> storeLocatorModelObj = StoreLocatorModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

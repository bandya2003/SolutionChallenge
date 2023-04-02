import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/presentation/request_management_screen/models/request_management_model.dart';

class RequestManagementController extends GetxController {
  Rx<RequestManagementModel> requestManagementModelObj =
      RequestManagementModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

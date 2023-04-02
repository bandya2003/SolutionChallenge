import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/presentation/google_pay_integration_screen/models/google_pay_integration_model.dart';

class GooglePayIntegrationController extends GetxController {
  Rx<GooglePayIntegrationModel> googlePayIntegrationModelObj =
      GooglePayIntegrationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/presentation/two_factor_authentication_screen/models/two_factor_authentication_model.dart';

class TwoFactorAuthenticationController extends GetxController {
  Rx<TwoFactorAuthenticationModel> twoFactorAuthenticationModelObj =
      TwoFactorAuthenticationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

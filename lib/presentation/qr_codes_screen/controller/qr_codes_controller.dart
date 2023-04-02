import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/presentation/qr_codes_screen/models/qr_codes_model.dart';

class QrCodesController extends GetxController {
  Rx<QrCodesModel> qrCodesModelObj = QrCodesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

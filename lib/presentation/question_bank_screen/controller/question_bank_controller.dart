import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/presentation/question_bank_screen/models/question_bank_model.dart';

class QuestionBankController extends GetxController {
  Rx<QuestionBankModel> questionBankModelObj = QuestionBankModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

import '../controller/question_bank_controller.dart';
import 'package:get/get.dart';

class QuestionBankBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuestionBankController());
  }
}

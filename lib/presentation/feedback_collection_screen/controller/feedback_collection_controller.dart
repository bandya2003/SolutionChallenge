import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/presentation/feedback_collection_screen/models/feedback_collection_model.dart';

class FeedbackCollectionController extends GetxController {
  Rx<FeedbackCollectionModel> feedbackCollectionModelObj =
      FeedbackCollectionModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

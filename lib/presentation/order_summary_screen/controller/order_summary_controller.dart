import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/presentation/order_summary_screen/models/order_summary_model.dart';
import 'package:flutter/material.dart';

class OrderSummaryController extends GetxController {
  TextEditingController languageController = TextEditingController();

  Rx<OrderSummaryModel> orderSummaryModelObj = OrderSummaryModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
  }
}

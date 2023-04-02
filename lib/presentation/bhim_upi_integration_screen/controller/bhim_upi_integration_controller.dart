import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/presentation/bhim_upi_integration_screen/models/bhim_upi_integration_model.dart';
import 'package:flutter/material.dart';

class BhimUpiIntegrationController extends GetxController {
  TextEditingController frame9896Controller = TextEditingController();

  Rx<BhimUpiIntegrationModel> bhimUpiIntegrationModelObj =
      BhimUpiIntegrationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frame9896Controller.dispose();
  }
}

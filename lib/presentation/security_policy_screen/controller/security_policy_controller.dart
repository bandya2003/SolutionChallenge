import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/presentation/security_policy_screen/models/security_policy_model.dart';
import 'package:flutter/material.dart';

class SecurityPolicyController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController group10198Controller = TextEditingController();

  TextEditingController group10198OneController = TextEditingController();

  Rx<SecurityPolicyModel> securityPolicyModelObj = SecurityPolicyModel().obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    group10198Controller.dispose();
    group10198OneController.dispose();
  }
}

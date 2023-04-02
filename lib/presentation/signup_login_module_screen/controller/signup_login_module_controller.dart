import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/presentation/signup_login_module_screen/models/signup_login_module_model.dart';
import 'package:flutter/material.dart';

class SignupLoginModuleController extends GetxController {
  TextEditingController group10198Controller = TextEditingController();

  TextEditingController group10198OneController = TextEditingController();

  Rx<SignupLoginModuleModel> signupLoginModuleModelObj =
      SignupLoginModuleModel().obs;

  Rx<bool> isShowPassword = false.obs;

  RxBool checkbox = false.obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(AppRoutes.signUpScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
    group10198Controller.dispose();
    group10198OneController.dispose();
  }
}

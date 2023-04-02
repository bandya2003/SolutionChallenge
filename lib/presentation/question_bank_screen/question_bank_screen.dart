import '../question_bank_screen/widgets/expandablelistinputplaceholdermediumon_item_widget.dart';
import 'controller/question_bank_controller.dart';
import 'models/expandablelistinputplaceholdermediumon_item_model.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/widgets/app_bar/appbar_image.dart';
import 'package:solution_challenge/widgets/app_bar/appbar_title.dart';
import 'package:solution_challenge/widgets/app_bar/custom_app_bar.dart';

class QuestionBankScreen extends GetWidget<QuestionBankController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 12),
                    onTap: onTapArrowleft9),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_question_bank".tr)),
            body: Padding(
                padding: getPadding(top: 24, bottom: 9),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.questionBankModelObj.value
                        .expandablelistinputplaceholdermediumonItemList.length,
                    itemBuilder: (context, index) {
                      ExpandablelistinputplaceholdermediumonItemModel model =
                          controller.questionBankModelObj.value
                                  .expandablelistinputplaceholdermediumonItemList[
                              index];
                      return ExpandablelistinputplaceholdermediumonItemWidget(
                          model);
                    }))));
  }

  onTapArrowleft9() {
    Get.back();
  }
}

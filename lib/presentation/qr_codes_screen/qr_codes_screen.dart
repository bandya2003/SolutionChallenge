import 'controller/qr_codes_controller.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/widgets/app_bar/appbar_image.dart';
import 'package:solution_challenge/widgets/app_bar/appbar_title.dart';
import 'package:solution_challenge/widgets/app_bar/custom_app_bar.dart';
import 'package:solution_challenge/widgets/custom_button.dart';

class QrCodesScreen extends GetWidget<QrCodesController> {
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
                    onTap: onTapArrowleft10),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_qr_code".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, right: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage79,
                          height: getSize(200),
                          width: getSize(200),
                          margin: getMargin(top: 33)),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Text("lbl_lorem_ipsum".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold24)),
                      Container(
                          width: getHorizontalSize(373),
                          margin: getMargin(left: 11, top: 13, right: 11),
                          child: Text("msg_lorem_ipsum_dolor2".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtGilroyMedium16Bluegray4001)),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(50), text: "lbl_copy_code".tr)
                    ]))));
  }

  onTapArrowleft10() {
    Get.back();
  }
}

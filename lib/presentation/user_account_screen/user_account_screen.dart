import 'controller/user_account_controller.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/widgets/app_bar/appbar_image.dart';
import 'package:solution_challenge/widgets/app_bar/appbar_title.dart';
import 'package:solution_challenge/widgets/app_bar/custom_app_bar.dart';
import 'package:solution_challenge/widgets/custom_icon_button.dart';

class UserAccountScreen extends GetWidget<UserAccountController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(51),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 14),
                    onTap: onTapArrowleft18),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_user_account".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenu24x24,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 14))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 22, right: 16, bottom: 22),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getSize(150),
                          width: getSize(150),
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse5150x150,
                                height: getSize(150),
                                width: getSize(150),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(75)),
                                alignment: Alignment.center),
                            CustomIconButton(
                                height: 30,
                                width: 30,
                                margin: getMargin(top: 5, right: 2),
                                alignment: Alignment.topRight,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgForward))
                          ])),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Text("lbl_danial_sams".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyBold18BlueA700)),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Text("msg_abc123_gmail_com".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16Bluegray400)),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgNotification1,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding: getPadding(left: 8, top: 1),
                                    child: Text("lbl_notifications".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Bluegray900)),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray600,
                                    height: getSize(24),
                                    width: getSize(24))
                              ])),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSettings,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 1)),
                                Padding(
                                    padding: getPadding(left: 8, top: 3),
                                    child: Text("lbl_language".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Bluegray900)),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray600,
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(bottom: 1))
                              ])),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMoonoutline,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding: getPadding(left: 8, top: 1),
                                    child: Text("lbl_dark_mode".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Bluegray900)),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray600,
                                    height: getSize(24),
                                    width: getSize(24))
                              ])),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSettings24x24,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding: getPadding(left: 8, top: 2),
                                    child: Text("msg_general_settings".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Bluegray900)),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray600,
                                    height: getSize(24),
                                    width: getSize(24))
                              ])),
                      Padding(
                          padding: getPadding(top: 28),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgDashboard24x24,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding: getPadding(left: 8, top: 1),
                                    child: Text("lbl_theme".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Bluegray900)),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray600,
                                    height: getSize(24),
                                    width: getSize(24))
                              ])),
                      Padding(
                          padding: getPadding(top: 29, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgQuestion,
                                    height: getSize(24),
                                    width: getSize(24)),
                                Padding(
                                    padding: getPadding(left: 8, top: 2),
                                    child: Text("msg_help_and_feedback".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Bluegray900)),
                                Spacer(),
                                CustomImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightBlueGray600,
                                    height: getSize(24),
                                    width: getSize(24))
                              ]))
                    ]))));
  }

  onTapArrowleft18() {
    Get.back();
  }
}

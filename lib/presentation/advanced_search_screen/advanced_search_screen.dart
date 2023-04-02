import '../advanced_search_screen/widgets/chipviewgroup10203_item_widget.dart';
import 'controller/advanced_search_controller.dart';
import 'models/chipviewgroup10203_item_model.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/widgets/app_bar/appbar_image.dart';
import 'package:solution_challenge/widgets/app_bar/appbar_title.dart';
import 'package:solution_challenge/widgets/app_bar/custom_app_bar.dart';
import 'package:solution_challenge/widgets/custom_button.dart';
import 'package:solution_challenge/widgets/custom_search_view.dart';

class AdvancedSearchScreen extends GetWidget<AdvancedSearchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 12),
                    onTap: onTapArrowleft2),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_search".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          focusNode: FocusNode(),
                          controller: controller.group10202Controller,
                          hintText: "lbl_search_anything".tr,
                          prefix: Container(
                              margin: getMargin(
                                  left: 12, top: 12, right: 8, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(44)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 12, right: 12, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgMicrophone)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(44))),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_recent".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtGilroySemiBold18Bluegray900),
                                Padding(
                                    padding: getPadding(top: 1, bottom: 1),
                                    child: Text("lbl_see_all".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtGilroyMedium16BlueA700))
                              ])),
                      Padding(
                          padding: getPadding(top: 15, right: 29),
                          child: Row(children: [
                            Container(
                                width: getHorizontalSize(100),
                                padding: getPadding(
                                    left: 10, top: 4, right: 10, bottom: 4),
                                decoration: AppDecoration.fillBlue5001.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6),
                                child: Row(children: [
                                  Padding(
                                      padding: getPadding(top: 3),
                                      child: Text("lbl_designer".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtGilroyMedium14)),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgClose,
                                      height: getSize(18),
                                      width: getSize(18),
                                      margin:
                                          getMargin(left: 5, top: 1, bottom: 1))
                                ])),
                            Container(
                                width: getHorizontalSize(110),
                                margin: getMargin(left: 8),
                                padding: getPadding(
                                    left: 10, top: 5, right: 10, bottom: 5),
                                decoration: AppDecoration.fillBlue5001.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6),
                                child: Row(children: [
                                  Padding(
                                      padding: getPadding(top: 2),
                                      child: Text("lbl_developer".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtGilroyMedium14)),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgClose,
                                      height: getSize(18),
                                      width: getSize(18),
                                      margin: getMargin(left: 5))
                                ])),
                            Container(
                                width: getHorizontalSize(141),
                                margin: getMargin(left: 8),
                                padding: getPadding(
                                    left: 10, top: 5, right: 10, bottom: 5),
                                decoration: AppDecoration.fillBlue5001.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6),
                                child: Row(children: [
                                  Padding(
                                      padding: getPadding(top: 2),
                                      child: Text("lbl_quality_analyst".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtGilroyMedium14)),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgClose,
                                      height: getSize(18),
                                      width: getSize(18),
                                      margin: getMargin(left: 5))
                                ]))
                          ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: Text("lbl_categories".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18Bluegray900)),
                      Padding(
                          padding: getPadding(top: 13),
                          child: Wrap(
                              runSpacing: getVerticalSize(5),
                              spacing: getHorizontalSize(5),
                              children: List<Widget>.generate(
                                  controller
                                      .advancedSearchModelObj
                                      .value
                                      .chipviewgroup10203ItemList
                                      .length, (index) {
                                Chipviewgroup10203ItemModel model = controller
                                    .advancedSearchModelObj
                                    .value
                                    .chipviewgroup10203ItemList[index];
                                return Chipviewgroup10203ItemWidget(model);
                              }))),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("lbl_level".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18Bluegray900)),
                      Padding(
                          padding: getPadding(top: 15, right: 83),
                          child: Row(children: [
                            Container(
                                width: getHorizontalSize(86),
                                padding: getPadding(
                                    left: 10, top: 12, right: 10, bottom: 12),
                                decoration: AppDecoration.txtFillBlueA700
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtRoundedBorder6),
                                child: Text("lbl_beginner".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroyMedium16WhiteA700)),
                            Container(
                                width: getHorizontalSize(115),
                                margin: getMargin(left: 8),
                                padding: getPadding(
                                    left: 10, top: 12, right: 10, bottom: 12),
                                decoration: AppDecoration.txtFillWhiteA700
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtRoundedBorder6),
                                child: Text("lbl_intermediate".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroyMedium16Bluegray400)),
                            Container(
                                width: getHorizontalSize(96),
                                margin: getMargin(left: 8),
                                padding: getPadding(
                                    left: 10, top: 13, right: 10, bottom: 13),
                                decoration: AppDecoration.txtFillWhiteA700
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtRoundedBorder6),
                                child: Text("lbl_advanced".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroyMedium16Bluegray400))
                          ])),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_search".tr,
                          margin: getMargin(bottom: 55))
                    ]))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}

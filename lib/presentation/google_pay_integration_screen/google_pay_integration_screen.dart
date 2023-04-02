import '../google_pay_integration_screen/widgets/listupitype_item_widget.dart';
import 'controller/google_pay_integration_controller.dart';
import 'models/listupitype_item_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/widgets/app_bar/appbar_image.dart';
import 'package:solution_challenge/widgets/app_bar/appbar_title.dart';
import 'package:solution_challenge/widgets/app_bar/custom_app_bar.dart';
import 'package:solution_challenge/widgets/custom_button.dart';

class GooglePayIntegrationScreen
    extends GetWidget<GooglePayIntegrationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(54),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 17),
                    onTap: onTapArrowleft12),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_payments".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 24, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 16, right: 19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("lbl_saved_card".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroySemiBold24Gray800),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgPlus,
                                    height: getSize(16),
                                    width: getSize(16),
                                    margin: getMargin(top: 6, bottom: 6)),
                                Padding(
                                    padding:
                                        getPadding(left: 8, top: 6, bottom: 6),
                                    child: Text("lbl_add_new_card".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroySemiBold14))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage,
                                    height: getVerticalSize(151),
                                    width: getHorizontalSize(250)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage150x1481,
                                    height: getVerticalSize(150),
                                    width: getHorizontalSize(148),
                                    margin: getMargin(left: 14, bottom: 1))
                              ])),
                      Container(
                          height: getVerticalSize(8),
                          margin: getMargin(top: 21),
                          child: SmoothIndicator(
                              offset: 0,
                              count: 3,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                  spacing: 7,
                                  activeDotColor: ColorConstant.blueA700,
                                  dotColor: ColorConstant.blue200,
                                  dotHeight: getVerticalSize(8),
                                  dotWidth: getHorizontalSize(8)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 19, top: 31),
                              child: Text("msg_other_payment_options".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroySemiBold24Gray800))),
                      Padding(
                          padding: getPadding(left: 16, top: 27, right: 16),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(26));
                              },
                              itemCount: controller.googlePayIntegrationModelObj
                                  .value.listupitypeItemList.length,
                              itemBuilder: (context, index) {
                                ListupitypeItemModel model = controller
                                    .googlePayIntegrationModelObj
                                    .value
                                    .listupitypeItemList[index];
                                return ListupitypeItemWidget(model);
                              }))),
                      Padding(
                          padding: getPadding(left: 22, top: 26, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgGooglepay,
                                    height: getVerticalSize(10),
                                    width: getHorizontalSize(25),
                                    margin: getMargin(top: 7, bottom: 6)),
                                Padding(
                                    padding:
                                        getPadding(left: 21, top: 3, bottom: 1),
                                    child: Text("lbl_google_pay".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyRegular16Black900)),
                                Spacer(),
                                Container(
                                    width: getHorizontalSize(24),
                                    padding: getPadding(all: 6),
                                    decoration: AppDecoration.fillBlueA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder12),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getSize(12),
                                              width: getSize(12),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              6))))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(left: 20, top: 25, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgLaptop,
                                    height: getSize(30),
                                    width: getSize(30)),
                                Padding(
                                    padding:
                                        getPadding(left: 19, top: 6, bottom: 4),
                                    child: Text("lbl_net_banking".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyRegular16Black900)),
                                Spacer(),
                                Container(
                                    height: getSize(24),
                                    width: getSize(24),
                                    margin: getMargin(top: 3, bottom: 3),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.whiteA700,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(12)),
                                        border: Border.all(
                                            color: ColorConstant.blueGray200,
                                            width: getHorizontalSize(1))))
                              ])),
                      Container(
                          margin: getMargin(left: 16, top: 24, right: 16),
                          padding: getPadding(
                              left: 24, top: 8, right: 24, bottom: 8),
                          decoration: AppDecoration.fillBlue50.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(left: 1, top: 1),
                                    child: Text("lbl_grand_total".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Bluegray900)),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_7_10".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtGilroyBold18BlueA700))
                              ])),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_pay_now".tr,
                          margin: getMargin(
                              left: 16, top: 30, right: 16, bottom: 5))
                    ]))));
  }

  onTapArrowleft12() {
    Get.back();
  }
}

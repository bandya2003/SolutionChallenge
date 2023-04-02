import '../item_availability_screen/widgets/listtype_item_widget.dart';
import 'controller/item_availability_controller.dart';
import 'models/listtype_item_model.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/widgets/app_bar/appbar_image.dart';
import 'package:solution_challenge/widgets/app_bar/appbar_title.dart';
import 'package:solution_challenge/widgets/app_bar/custom_app_bar.dart';
import 'package:solution_challenge/widgets/custom_button.dart';
import 'package:solution_challenge/widgets/custom_text_form_field.dart';

class ItemAvailabilityScreen extends GetWidget<ItemAvailabilityController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(54),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 17),
                    onTap: onTapArrowleft),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_shopping_cart".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 23, right: 16, bottom: 23),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("lbl_your_order".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyBold18)),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: controller.itemAvailabilityModelObj
                                  .value.listtypeItemList.length,
                              itemBuilder: (context, index) {
                                ListtypeItemModel model = controller
                                    .itemAvailabilityModelObj
                                    .value
                                    .listtypeItemList[index];
                                return ListtypeItemWidget(model);
                              }))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 29),
                              child: Text("msg_promo_code_and_coupans".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyBold18))),
                      Container(
                          margin: getMargin(top: 9),
                          padding: getPadding(top: 11, bottom: 11),
                          decoration: AppDecoration.outlineBluegray100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomTextFormField(
                                    width: getHorizontalSize(314),
                                    focusNode: FocusNode(),
                                    controller: controller.languageController,
                                    hintText: "msg_enter_promo_code".tr,
                                    margin: getMargin(bottom: 1),
                                    variant: TextFormFieldVariant.None,
                                    textInputAction: TextInputAction.done),
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("lbl_apply".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtGilroyBold16BlueA700))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 18, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_total_saving".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtGilroyBold16Indigo900)),
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("lbl_22".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtGilroyBold16BlueA700))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 20, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_total_mrp".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyRegular16),
                                Text("lbl_9_97".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyBold16)
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 15, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_texes_charges".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyRegular16)),
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("lbl_0_00".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 14, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("msg_shipping_charges".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyRegular16)),
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("lbl_free".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 14, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_discount".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyRegular16),
                                Text("lbl_2_00".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyMedium16)
                              ])),
                      Container(
                          margin: getMargin(top: 19),
                          padding: getPadding(
                              left: 16, top: 7, right: 16, bottom: 7),
                          decoration: AppDecoration.fillBlue50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_grand_total".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroySemiBold18),
                                Text("lbl_7_97".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyBold18BlueA700)
                              ])),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "msg_proceed_to_checkout".tr,
                          margin: getMargin(bottom: 69))
                    ]))));
  }

  onTapArrowleft() {
    Get.back();
  }
}

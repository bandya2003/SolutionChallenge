import '../request_management_screen/widgets/listitemname_item_widget.dart';
import 'controller/request_management_controller.dart';
import 'models/listitemname_item_model.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/widgets/app_bar/appbar_image.dart';
import 'package:solution_challenge/widgets/app_bar/appbar_title.dart';
import 'package:solution_challenge/widgets/app_bar/custom_app_bar.dart';

class RequestManagementScreen extends GetWidget<RequestManagementController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(44),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 8, bottom: 12),
                    onTap: onTapArrowleft11),
                centerTitle: true,
                title: AppbarTitle(text: "msg_request_management".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 18, right: 16, bottom: 18),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(52),
                          width: getHorizontalSize(396),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    padding: getPadding(
                                        left: 57,
                                        top: 14,
                                        right: 57,
                                        bottom: 14),
                                    decoration:
                                        AppDecoration.outlineBluegray1001,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("lbl_completed".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium16Bluegray400))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: getPadding(left: 59),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_pending".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroyMedium16BlueA700),
                                          Padding(
                                              padding: getPadding(top: 16),
                                              child: SizedBox(
                                                  width: getHorizontalSize(80),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(2),
                                                      thickness:
                                                          getVerticalSize(2),
                                                      color: ColorConstant
                                                          .blueA700)))
                                        ])))
                          ])),
                      Padding(
                          padding: getPadding(top: 22),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: controller.requestManagementModelObj
                                  .value.listitemnameItemList.length,
                              itemBuilder: (context, index) {
                                ListitemnameItemModel model = controller
                                    .requestManagementModelObj
                                    .value
                                    .listitemnameItemList[index];
                                return ListitemnameItemWidget(model);
                              })))
                    ]))));
  }

  onTapArrowleft11() {
    Get.back();
  }
}

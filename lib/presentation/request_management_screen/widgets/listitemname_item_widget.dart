import '../controller/request_management_controller.dart';
import '../models/listitemname_item_model.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/widgets/custom_button.dart';

// ignore: must_be_immutable
class ListitemnameItemWidget extends StatelessWidget {
  ListitemnameItemWidget(this.listitemnameItemModelObj);

  ListitemnameItemModel listitemnameItemModelObj;

  var controller = Get.find<RequestManagementController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 15,
          top: 12,
          right: 15,
          bottom: 12,
        ),
        decoration: AppDecoration.outlineGray70011.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                left: 1,
                top: 2,
                right: 1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_item_name".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroySemiBold16,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 2,
                      bottom: 2,
                    ),
                    child: Text(
                      "lbl_edit".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroySemiBold12,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 1,
                top: 11,
              ),
              child: Text(
                "msg_add_4517_washington".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtGilroyMedium14Bluegray400,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 1,
                top: 8,
              ),
              child: Text(
                "msg_details_lorem_ipsum".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtGilroyMedium14Bluegray400,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 1,
                top: 5,
              ),
              child: Row(
                children: [
                  CustomButton(
                    height: getVerticalSize(
                      24,
                    ),
                    width: getHorizontalSize(
                      93,
                    ),
                    text: "lbl_18_05_2022".tr,
                    variant: ButtonVariant.FillBlue50,
                    shape: ButtonShape.RoundedBorder3,
                    padding: ButtonPadding.PaddingT4,
                    fontStyle: ButtonFontStyle.GilroySemiBold12,
                    suffixWidget: Container(
                      margin: getMargin(
                        left: 4,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgArrowdown12x12,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: getPadding(
                      top: 3,
                      bottom: 3,
                    ),
                    child: Text(
                      "lbl_reject".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroySemiBold14Bluegray400,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 3,
                      bottom: 3,
                    ),
                    child: Text(
                      "lbl_approve".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroyBold14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

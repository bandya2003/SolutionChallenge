import '../controller/bhim_upi_integration_controller.dart';
import '../models/listcut_item_model.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/core/app_export.dart';

// ignore: must_be_immutable
class ListcutItemWidget extends StatelessWidget {
  ListcutItemWidget(this.listcutItemModelObj);

  ListcutItemModel listcutItemModelObj;

  var controller = Get.find<BhimUpiIntegrationController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgCut,
          height: getVerticalSize(
            24,
          ),
          width: getHorizontalSize(
            36,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 17,
            top: 3,
            bottom: 1,
          ),
          child: Obx(
            () => Text(
              listcutItemModelObj.paymentmethodTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtGilroyRegular16Black900,
            ),
          ),
        ),
        Spacer(),
        Container(
          height: getSize(
            24,
          ),
          width: getSize(
            24,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                12,
              ),
            ),
            border: Border.all(
              color: ColorConstant.blueGray200,
              width: getHorizontalSize(
                1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

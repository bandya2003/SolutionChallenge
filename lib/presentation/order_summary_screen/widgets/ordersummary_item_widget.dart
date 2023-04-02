import '../controller/order_summary_controller.dart';
import '../models/ordersummary_item_model.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/core/app_export.dart';

// ignore: must_be_immutable
class OrdersummaryItemWidget extends StatelessWidget {
  OrdersummaryItemWidget(this.ordersummaryItemModelObj);

  OrdersummaryItemModel ordersummaryItemModelObj;

  var controller = Get.find<OrderSummaryController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: ColorConstant.whiteA700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Container(
            height: getSize(
              64,
            ),
            width: getSize(
              64,
            ),
            padding: getPadding(
              left: 11,
              top: 18,
              right: 11,
              bottom: 18,
            ),
            decoration: AppDecoration.fillWhiteA700.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage,
                  height: getVerticalSize(
                    27,
                  ),
                  width: getHorizontalSize(
                    40,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 1,
            bottom: 3,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 6,
                      bottom: 5,
                    ),
                    child: Obx(
                      () => Text(
                        ordersummaryItemModelObj.typeTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroySemiBold16,
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      88,
                    ),
                    margin: getMargin(
                      left: 130,
                    ),
                    padding: getPadding(
                      left: 8,
                      top: 4,
                      right: 8,
                      bottom: 4,
                    ),
                    decoration: AppDecoration.outlineBlueA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder6,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgVideocamera,
                          height: getSize(
                            16,
                          ),
                          width: getSize(
                            16,
                          ),
                          margin: getMargin(
                            top: 3,
                            bottom: 3,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                          ),
                          child: Obx(
                            () => Text(
                              ordersummaryItemModelObj.quantityTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyBold18Bluegray900,
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgPlus,
                          height: getSize(
                            16,
                          ),
                          width: getSize(
                            16,
                          ),
                          margin: getMargin(
                            left: 16,
                            top: 3,
                            bottom: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  top: 6,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 3,
                      ),
                      child: Obx(
                        () => Text(
                          ordersummaryItemModelObj.weightTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGilroyRegular14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 252,
                      ),
                      child: Obx(
                        () => Text(
                          ordersummaryItemModelObj.priceTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGilroyBold16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

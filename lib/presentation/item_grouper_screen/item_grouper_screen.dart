import '../item_grouper_screen/widgets/griditemcounter_item_widget.dart';
import 'controller/item_grouper_controller.dart';
import 'models/griditemcounter_item_model.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/core/app_export.dart';
import 'package:solution_challenge/widgets/app_bar/appbar_image.dart';
import 'package:solution_challenge/widgets/app_bar/appbar_title.dart';
import 'package:solution_challenge/widgets/app_bar/custom_app_bar.dart';

class ItemGrouperScreen extends GetWidget<ItemGrouperController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 17),
                    onTap: onTapArrowleft3),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_pages".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin:
                          getMargin(left: 16, top: 12, right: 16, bottom: 17))
                ]),
            body: Padding(
                padding: getPadding(left: 16, top: 20, right: 16),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(191),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(16),
                        crossAxisSpacing: getHorizontalSize(16)),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.itemGrouperModelObj.value
                        .griditemcounterItemList.length,
                    itemBuilder: (context, index) {
                      GriditemcounterItemModel model = controller
                          .itemGrouperModelObj
                          .value
                          .griditemcounterItemList[index];
                      return GriditemcounterItemWidget(model);
                    })))));
  }

  onTapArrowleft3() {
    Get.back();
  }
}

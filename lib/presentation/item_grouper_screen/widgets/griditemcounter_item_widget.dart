import '../controller/item_grouper_controller.dart';
import '../models/griditemcounter_item_model.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/core/app_export.dart';

// ignore: must_be_immutable
class GriditemcounterItemWidget extends StatelessWidget {
  GriditemcounterItemWidget(this.griditemcounterItemModelObj);

  GriditemcounterItemModel griditemcounterItemModelObj;

  var controller = Get.find<ItemGrouperController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 71,
        top: 19,
        right: 71,
        bottom: 19,
      ),
      decoration: AppDecoration.outlineGray70011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: getPadding(
              top: 129,
            ),
            child: Obx(
              () => Text(
                griditemcounterItemModelObj.itemCounterTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtGilroyMedium18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

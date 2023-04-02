import '../models/chipviewgroup10203_item_model.dart';
import 'package:flutter/material.dart';
import 'package:solution_challenge/core/app_export.dart';

// ignore: must_be_immutable
class Chipviewgroup10203ItemWidget extends StatelessWidget {
  Chipviewgroup10203ItemWidget(this.chipviewgroup10203ItemModelObj);

  Chipviewgroup10203ItemModel chipviewgroup10203ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: getPadding(
          left: 10,
          right: 10,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewgroup10203ItemModelObj.group10203Txt.value,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: chipviewgroup10203ItemModelObj.isSelected.value
                ? ColorConstant.whiteA700
                : ColorConstant.blueGray400,
            fontSize: getFontSize(
              16,
            ),
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: chipviewgroup10203ItemModelObj.isSelected.value,
        backgroundColor: ColorConstant.whiteA700,
        selectedColor: ColorConstant.blueA700,
        shape: chipviewgroup10203ItemModelObj.isSelected.value
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    6,
                  ),
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    6,
                  ),
                ),
              ),
        onSelected: (value) {
          chipviewgroup10203ItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}

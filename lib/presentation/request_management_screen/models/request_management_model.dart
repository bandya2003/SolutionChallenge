import 'package:get/get.dart';
import 'listitemname_item_model.dart';

class RequestManagementModel {
  RxList<ListitemnameItemModel> listitemnameItemList =
      RxList.generate(5, (index) => ListitemnameItemModel());
}

import 'package:get/get.dart';
import 'listtype_item_model.dart';

class ItemAvailabilityModel {
  RxList<ListtypeItemModel> listtypeItemList =
      RxList.generate(2, (index) => ListtypeItemModel());
}

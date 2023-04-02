import 'package:get/get.dart';
import 'griditemcounter_item_model.dart';

class ItemGrouperModel {
  RxList<GriditemcounterItemModel> griditemcounterItemList =
      RxList.generate(6, (index) => GriditemcounterItemModel());
}

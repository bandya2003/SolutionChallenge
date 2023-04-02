import 'package:get/get.dart';
import 'listupitype_item_model.dart';

class GooglePayIntegrationModel {
  RxList<ListupitypeItemModel> listupitypeItemList =
      RxList.generate(3, (index) => ListupitypeItemModel());
}

import 'package:get/get.dart';
import 'listcut_item_model.dart';

class BhimUpiIntegrationModel {
  RxList<ListcutItemModel> listcutItemList =
      RxList.generate(4, (index) => ListcutItemModel());
}

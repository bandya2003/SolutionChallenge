import 'package:get/get.dart';
import 'ordersummary_item_model.dart';

class OrderSummaryModel {
  RxList<OrdersummaryItemModel> ordersummaryItemList =
      RxList.generate(2, (index) => OrdersummaryItemModel());
}

import 'package:get/get.dart';
import 'package:shopping_cart_update/models/product.dart';

class CardController extends GetxController {
  var cardItems = <Product>[].obs;
  double get totalAmount =>
      cardItems.fold(0, (sum, element) => sum + int.parse(element.produtPrice));
  void addItem(product) {
    cardItems.add(product);
  }
}

import 'package:get/state_manager.dart';
import 'package:shopping_cart_update/models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var internetProducts = [
      Product(1, "Apple", "10", "productDescription", "productImage"),
      Product(2, "Mango", "20", "productDescription", "productImage"),
      Product(3, "Citrus ", "30", "productDescription", "productImage"),
      Product(4, "Berries ", "50", "productDescription", "productImage"),
      Product(5, "Bananna", "5", "productDescription", "productImage"),
      Product(6, "Malta", "40", "productDescription", "productImage"),
      Product(7, "Angur", "40", "productDescription", "productImage"),
    ];
    products.value = internetProducts;
  }
}

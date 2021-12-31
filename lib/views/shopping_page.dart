import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:shopping_cart_update/controllers/card_controller.dart';
import 'package:shopping_cart_update/controllers/shopping_controller.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final shopingController = Get.put(ShoppingController());
    final cardController = Get.put(CardController());

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(child: GetX<ShoppingController>(builder: (controller) {
            return ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text("Prodcuct Name"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(controller.products[index].productName),
                              ],
                            ),
                            Column(
                              children: [
                                Text("Price"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(controller.products[index].produtPrice),
                              ],
                            ),
                            Column(
                              children: [
                                Text("Add to Cart"),
                                IconButton(
                                    color: Colors.green,
                                    onPressed: () {
                                      cardController.addItem(
                                          shopingController.products[index]);
                                    },
                                    icon: Icon(Icons.add_circle)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                });
          })),
          GetX<CardController>(builder: (controller) {
            return Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text("Total Amount: \$ " +
                    cardController.totalAmount.toString()),
                SizedBox(
                  height: 30,
                )
              ],
            );
          })
        ],
      ),
    );
  }
}

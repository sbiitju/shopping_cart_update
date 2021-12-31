import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart_update/controllers/card_controller.dart';
import 'package:shopping_cart_update/views/shopping_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: Icon(Icons.add_shopping_cart),
          label: GetX<CardController>(
            builder: (controller) {
              return Text(controller.cardItems.length.toString());
            },
          )),
      body: SafeArea(
        child: ShoppingPage(),
      ),
    );
  }
}

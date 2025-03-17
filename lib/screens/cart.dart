import 'package:flutter/material.dart';
import 'package:furniture_app/cartPrice/cartPrice.dart';
import 'package:furniture_app/cartPrice/cartPriceNull.dart';
import 'package:furniture_app/cart_item_widget.dart';
import 'package:furniture_app/component/dummy_product_list.dart';
import 'package:furniture_app/models/product_model.dart';

class Cart extends StatefulWidget {
  Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Cart",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              separatorBuilder: (ctx, child) {
                return const SizedBox(
                  height: 12,
                );
              },
              itemCount: DummyProductList.cartList.length,
              shrinkWrap: true,
              itemBuilder: (ctx, index) {
                return CartItemWidget(productModel: DummyProductList.cartList[index],index: index);
              },
            ),
          ),
          if(DummyProductList.cartList.isEmpty)
            const Cartpricenull()
          else
           const Cartprice(),
        ],
      ),
    );
  }
}

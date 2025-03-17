import 'package:fluttertoast/fluttertoast.dart';
import 'package:furniture_app/component/dummy_product_list.dart';
import 'package:furniture_app/models/product_model.dart';
import 'package:flutter/material.dart';

class Utils {
  static bool addToCart(ProductModel product) {
    DummyProductList.cartList.add(product);
    return DummyProductList.cartList.contains(product);
  }

  static void toastMessage({String message = 'Added to Cart'}) {
    Fluttertoast.showToast(msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM_RIGHT,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}

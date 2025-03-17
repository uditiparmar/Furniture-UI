import 'package:flutter/cupertino.dart';
import 'package:furniture_app/models/product_model.dart';

class AppAssets {
  static String product1 = 'assets/sofa.jpg';
  static String product2 = 'assets/lamp.webp';
  static String product3 = 'assets/studytable.webp';
  static String product4 = 'assets/chair.webp';
  static String product5 = 'assets/chair1.webp';
  static String product6 = 'assets/bar.webp';
  static String product7 = 'assets/chair2.webp';
}

class DummyProductList {
  static List<ProductModel> exploreList = <ProductModel>[
    ProductModel(
        productName: 'White Sofa',
        productImage: AppAssets.product1,
        price: 'Rs.9,000',
        description: 'Curved Off-White Minimalist Luxury Sofa'),
    ProductModel(
        productName: 'Table Lamp',
        productImage: AppAssets.product2,
        price: 'Rs.3,275',
        description: 'Touch Sensor Grey Table Lamp'),
    ProductModel(
        productName: 'Study Table',
        productImage: AppAssets.product3,
        price: 'Rs.5,000',
        description: 'Eston Solid Ash Wood & Rattan Study Table'),
    ProductModel(
        productName: 'Dining Chair',
        productImage: AppAssets.product4,
        price: 'Rs.2,000',
        description: 'Modern Minimalist Solid Wood Dining Chair'),
  ];

  static List<ProductModel> bestSellerList = <ProductModel>[
    ProductModel(
        productName: 'Modern Accent Chair',
        productImage: AppAssets.product5,
        price: 'Rs.4,555',
        description: 'Minimalist Accent Chair'),
    ProductModel(
        productName: 'Bar Cabinet',
        productImage: AppAssets.product6,
        price: 'Rs.8,455',
        description: 'Bar Cabinet with Wine Glass Storage & Bottle Rack '),
    ProductModel(
        productName: 'Double Decker Table',
        productImage: AppAssets.product7,
        price: 'Rs.9,499',
        description: 'Double Decker Sheesham Wood Coffee Table'),
  ];

  static List<ProductModel> cartList = <ProductModel>[];
}

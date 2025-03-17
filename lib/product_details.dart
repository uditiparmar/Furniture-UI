import 'package:flutter/material.dart';
import 'package:furniture_app/Utils/utils.dart';
import 'package:furniture_app/models/product_model.dart';
import 'package:furniture_app/screens/cart.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  onSelect() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Cart(),
      ),
    );
  }
  int selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: onSelect,
            child: const Icon(
              Icons.add_shopping_cart_rounded,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 7,
          )
        ],
        title: const Center(
          child: Text(
            "Details",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            width: 400,
            height: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.productModel.productImage),
                    fit: BoxFit.fill),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                width: 380,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        width: 1,
                        style: BorderStyle.solid,
                        color: Colors.grey)),
                child: Container(
                  margin: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      const Text(
                        "Color",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 180,
                      ),
                      SizedBox(
                        child: Row(
                          children: getColors(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                width: 380,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        width: 1,
                        style: BorderStyle.solid,
                        color: Colors.grey)),
                child: Container(
                  margin: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Price",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            widget.productModel.price,
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      const VerticalDivider(
                        thickness: 1.5,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          widget.productModel.description.toString(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          InkWell(
            onTap: () {
              bool isAdded = Utils.addToCart(widget.productModel);
              if (isAdded) {
                Utils.toastMessage();
              } else {
                Utils.toastMessage(message: 'Cant add to cart');
              }
            },
            child: Container(
              height: 60,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 2, color: Colors.black)),
              child: const Center(
                child: Text("Add to cart",
                    style: TextStyle(fontSize: 23, color: Colors.black)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getColors() {
    return List.generate(
      colorList.length,
      (index) => Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Stack(alignment: Alignment.center, children: [
          InkWell(
            onTap: () {
              setState(() {
                selectedColor = index;
              });
            },
            child: Icon(
              Icons.circle,
              color: colorList[index],
              size: 30,
            ),
          ),
          Visibility(
            visible: selectedColor == index,
            child: Icon(
              Icons.circle,
              size: 35,
              color: colorList[index],
            ),
          )
        ]),
      ),
    );
  }

  List<Color> colorList = <Color>[
    //const Color.fromARGB(140, 114, 102, 100),
    Colors.grey,
    Colors.black,
    Colors.brown
  ];
}

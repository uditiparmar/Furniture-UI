import 'package:flutter/material.dart';
import 'package:furniture_app/models/product_model.dart';
import 'package:furniture_app/view_model/cart_view_model.dart';

class CartItemWidget extends StatefulWidget {
  const CartItemWidget(
      {super.key, required this.productModel, required this.index});

  final ProductModel productModel;
  final int index;

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  var cartVM = CartViewModel();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 18,
        ),
        Row(
          children: [
            Checkbox(
                value: cartVM.selectedItems.containsKey(widget.index),
                activeColor: Colors.brown,
                onChanged: (value) {
                  if (cartVM.selectedItems.containsKey(widget.index)) {
                    setState(() {
                      cartVM.selectedItems.remove(widget.index);
                    });
                  } else {
                    setState(() {
                      cartVM.selectedItems.addAll({widget.index: 1});
                    });
                  }
                }),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                widget.productModel.productImage,
                height: 90,
                width: 90,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.productModel.productName,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        widget.productModel.price,
                        style: const TextStyle(fontSize: 18, color: Colors.red),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    cartVM.selectedItems.update(
                                        widget.index,
                                        (value) =>
                                            value > 1 ? value - 1 : value);
                                  });
                                },
                                child: const Icon(Icons.remove)),
                            Text(
                              cartVM.selectedItems[widget.index] != null
                                  ? cartVM.selectedItems[widget.index]
                                      .toString()
                                  : '0',
                              style: const TextStyle(fontSize: 20),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  cartVM.selectedItems.update(
                                      widget.index, (value) => value + 1);
                                });
                              },
                              child: const Icon(
                                Icons.add,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}

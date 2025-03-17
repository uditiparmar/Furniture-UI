import 'package:flutter/material.dart';
class Cartpricenull extends StatefulWidget {
  const Cartpricenull({super.key});

  @override
  State<Cartpricenull> createState() => _CartpricenullState();
}

class _CartpricenullState extends State<Cartpricenull> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      width: 500,
      height: 300,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.grey, spreadRadius: 3, blurRadius: 5)
        ],
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Selected Items",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "Rs.00.0",
                style: TextStyle(color: Colors.red, fontSize: 18),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Shipping Fees",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "Rs.00.0",
                style: TextStyle(color: Colors.red, fontSize: 18),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          const SizedBox(
            height: 35,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Subtotal",
                style:
                TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "Rs.00.0",
                style: TextStyle(color: Colors.red, fontSize: 20,fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  padding: WidgetStatePropertyAll(EdgeInsets.only(
                      left: 120, right: 120, top: 12, bottom: 12))),
              onPressed: () {},
              child: const Text(
                "Checkout",
                style: TextStyle(color: Colors.white,fontSize: 18),
              ))
        ],
      ),
    );
  }
}

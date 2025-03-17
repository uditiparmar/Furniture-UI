import 'package:flutter/material.dart';

class Bestsellerlist extends StatelessWidget {
  Bestsellerlist({super.key,required this.price,required this.productImage,required this.productName,required this.onTap});

  final String productName;
  final String price;
  final String productImage;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: InkWell(
      onTap: onTap,
      // padding: const EdgeInsets.only(bottom: 5),
      // margin: const EdgeInsets.only(left: 15, right: 15),
      child: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 3,
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              height: 110,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Positioned(
                    top: 15,
                    bottom: 11,
                    left: 20,
                    child: Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(productImage),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Positioned(
                    top: 210,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          productName,
                          style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Description",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              price,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 130,
                            ),
                            const Icon(
                              Icons.arrow_circle_right,
                              size: 30,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),);

  }
}


import 'package:flutter/material.dart';

class Imagelist extends StatelessWidget {
  Imagelist(
      {super.key,
      required this.productName,
      required this.productImage,
      required this.price,
      required this.onTap});

  final String productName;
  final String productImage;
  final String price;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      //margin: const EdgeInsets.only(left: 10),
      child: Material(
        borderRadius: BorderRadius.circular(15),
        shadowColor: Colors.black,
        color: Colors.white,
        elevation: 3,
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              width: 180,
              height: 290,
            ),
            Positioned(
              top: 20,
              left: 15,
              right: 15,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage(productImage), fit: BoxFit.fill),
                    ),
                    height: 180,
                    width: 200,
                  ),
                  // Positioned(
                  //     right: 10,
                  //     top: 10,
                  //     child: InkWell(onTap: (){},child: Icon(Icons.favorite_border_outlined),)
                  //     )
                ],
              ),
            ),
            Positioned(
              top: 208,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
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
                        width: 55,
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
    );
  }
}

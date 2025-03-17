import 'package:flutter/material.dart';
import 'package:furniture_app/bestsellerList.dart';
import 'package:furniture_app/component/dummy_product_list.dart';
import 'package:furniture_app/imageList.dart';
import 'package:furniture_app/product_details.dart';
import 'package:furniture_app/screens/cart.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailedScreen extends StatefulWidget {
  const DetailedScreen({super.key});

  @override
  State<DetailedScreen> createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {

  onSelect() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Cart(),
      ),
    );
  }

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
        title: Center(
          child: Text("FurniCraft",
              style: GoogleFonts.dancingScript(
                  fontSize: 35, fontWeight: FontWeight.bold)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Divider(
              indent: 20,
              endIndent: 20,
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    image: DecorationImage(
                      image: AssetImage('assets/home1.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black54,
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(left: 15, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Promo for first ",
                            style: GoogleFonts.aBeeZee(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                height: 0.5),
                          ),
                          Text(
                            " purchase ",
                            style: GoogleFonts.aBeeZee(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const Text(
                            "Special offers",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          const Text(
                            "40% Off Prices",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: const Text(
                "Explore",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              height: 315,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 18,
                  );
                },
                padding: const EdgeInsets.only(bottom: 5),
                scrollDirection: Axis.horizontal,
                itemCount: DummyProductList.exploreList.length,
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  var product = DummyProductList.exploreList[index];
                  return Imagelist(
                    productName: product.productName,
                    productImage: product.productImage,
                    price: product.price,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => ProductDetails(
                            productModel: product,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: const Text(
                "Best Selling",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
              width: 50,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              height: 110,
              child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 15,
                    );
                  },
                  padding: const EdgeInsets.only(bottom: 5),
                  scrollDirection: Axis.horizontal,
                  itemCount: DummyProductList.bestSellerList.length,
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    var product = DummyProductList.bestSellerList[index];
                    return Bestsellerlist(
                        productName: product.productName,
                        productImage: product.productImage,
                        price: product.price,
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => ProductDetails(
                                    productModel: product,
                                  )));
                        });
                  }),
            )
          ],
        ),
      ),
    );
  }
}

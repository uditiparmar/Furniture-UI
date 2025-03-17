import 'package:flutter/material.dart';
import 'package:furniture_app/screens/detailed_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

void onSelect(context){
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> const DetailedScreen()));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration:const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/home.jpg'), fit: BoxFit.fill),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              height: 80,
              margin: const EdgeInsets.only(left: 20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Minimalist ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        height: 0.5,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Furniture",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 5,
            bottom: 10,
            child: InkWell(
              onTap: (){onSelect(context);},
                child: const Icon(
              Icons.double_arrow_outlined,
              size: 90,
              color: Color.fromARGB(152, 163, 92, 30),
            ),)

          )
        ],
      ),
    );
  }
}

import 'package:darvesh/login_page.dart';
import 'package:flutter/material.dart';

class MenyPage extends StatelessWidget {
  const MenyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "images/kayaminik.png",
                  ),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          top: 570,
          left: 35,
          child: Column(
            children: [
              const Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const Text(
                "to our store",
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const Text(
                "Ger your groceries in as fast as one hour",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                      (route) => false,
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 353,
                    height: 67,
                    decoration: BoxDecoration(
                      color: Color(0xff53B175),
                      borderRadius: BorderRadiusDirectional.circular(19),
                    ),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ))
            ],
          ),
        )
      ]),
    );
  }
}

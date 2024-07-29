import 'dart:core';
import 'package:flutter/material.dart';
class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _ProductdetailState();
}

class _ProductdetailState extends State<Page5> {
  bool like = false;
  int cnt = 1;
  int num = 1;
  var narkh = 4.99;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
     
          children: [
            Container(
              alignment: Alignment.center,
              width: 413,
              height: 371,
              decoration: const BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Image.asset("images/sevay.png"),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Naturel Red Apple",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            like = !like;
                          });
                        },
                        icon: like
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : Icon(Icons.favorite_outline),
                      ),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 10),
                    child:  Text(
                      "${num} kg, Price",
                      style: TextStyle(color: Color(0xff7C7C7C), fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 170,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (cnt == 0 || num ==0 || narkh == 4.99) {
                                      return;
                                    }
                                    cnt--;
                                   num--;
                                   narkh-=4.99;
                                  });
                                },
                                icon: Icon(
                                  Icons.minimize,
                                  color: Colors.green,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17),
                                  border:
                                      Border.all(width: 1, color: Colors.grey),
                                ),
                                child: Text(
                                  "$cnt",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    cnt++;
                                    num++;
                                    narkh+=4.99;
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.green,
                                ),
                              )
                            ],
                          ),
                        ),
                         Container(
                          width: 115,
                           child: Text(
                            "\$ ${narkh}",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w900),
                                                   ),
                         )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 400,
                    height: 1,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 5),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Product Detail",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                const  Padding(
                    padding:  EdgeInsets.only(left: 10,right: 5),
                    child:  Text(
                      "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                      style: TextStyle(fontSize: 13, color: Color(0xff7C7C7C)),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 400,
                    height: 1,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                 const Padding(
                    padding:  EdgeInsets.only(left: 10,right: 5),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nutritions",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 400,
                    height: 1,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right:5 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Nutritions",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("images/sitoracha.png"),
                              const SizedBox(
                                width: 20,
                              ),
                              const Icon(
                                Icons.keyboard_arrow_right_outlined,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Add To Basket",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffffffff)),
                ),
                width: 364,
                height: 67,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: Color(0xff53B175),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:darvesh/page4.dart';
import 'package:darvesh/page6.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
 
  List<String> surat = [
    "images/Group 6858.png",
    "images/tkhmmm.png",
    "images/babababaa.png",
    "images/gumaaayaya.png",
  ];
  List<String> textyakum = [
    "Bell Pepper Red",
    "Egg Chicken Red",
    "Organic Bananas",
    "Ginger",
  ];
  List<String> textduyum = [
    "\$4.99",
    "\$1.99",
    "\$3.00",
    "\$2.99",
  ];
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Cart",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                height: 460,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Page4(
                        suratay: surat[index],
                        text1: textyakum[index],
                        text2: textduyum[index],
                      );
                    })),
          ),
          OutlinedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Container(
                              height: 62,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Checkout",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 24),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.close),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 52,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 2, color: Colors.grey),
                                      top: BorderSide(
                                          width: 2, color: Colors.grey))),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Delivery",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Color(0xff7C7C7C)),
                                  ),
                                  Text(
                                    "Select Method   >",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 52,
                              decoration: const BoxDecoration(
                                  border: Border(
                                bottom:
                                    BorderSide(width: 2, color: Colors.grey),
                              )),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Pament",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Color(0xff7C7C7C)),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.credit_card,
                                          color: Colors.blue),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.keyboard_arrow_right_outlined)
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 52,
                              decoration: const BoxDecoration(
                                  border: Border(
                                bottom:
                                    BorderSide(width: 2, color: Colors.grey),
                              )),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Promo Code",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Color(0xff7C7C7C)),
                                  ),
                                  Text(
                                    "Pick discount  >",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 52,
                              decoration: const BoxDecoration(
                                  border: Border(
                                bottom:
                                    BorderSide(width: 2, color: Colors.grey),
                              )),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total Cost",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Color(0xff7C7C7C)),
                                  ),
                                  Text(
                                    "\$13.97   >",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "By placing an order you agree to our",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Color(0xff7C7C7C)),
                                ),
                                Text(
                                  "Terms And Conditions",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Page6()));
                              },
                            child: 
                            Container(
                              alignment: Alignment.center,
                              width: 360,
                              height: 68,
                              decoration: BoxDecoration(
                                color: Color(0xff53B175),
                                borderRadius: BorderRadius.circular(19),
                              ),
                              child: Text(
                                "Place Order",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                            ),)
                          ],
                        ));
                  });
            },
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              minimumSize: const Size(328, 52),
              side: const BorderSide(color: Colors.transparent),
            ),
            child: Container(
              alignment: Alignment.center,
              width: 300,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff53B175),
              ),
              child: const Text(
                "Place Order",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

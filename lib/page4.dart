import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page4 extends StatefulWidget {
  final String? suratay;
  final String? text1;
  final String? text2;

  const Page4({
    super.key,
    required this.suratay,
    required this.text1,
    required this.text2,
  });

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  int cnt = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 323,
        height: 116,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 2, color: Colors.grey)),
            borderRadius: BorderRadius.circular(8),
            color: Colors.white),
        child: Container(
          child:
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                            Image.asset(
                widget.suratay!,
                width: 111,
                height: 74,
                            ),
                            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.text1!,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "1kg, Price",
                    style: TextStyle(fontSize: 14),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (cnt==0) {
                           return;   
                            }
                            cnt--;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Color(0xffF0F0F0),
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(17)),
                          child: Icon(
                            Icons.minimize_sharp,
                            size: 17,
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Text("$cnt",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                      SizedBox(width: 15,),
                
                      InkWell(
                        onTap: () {
                          setState(() {
                            cnt++;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Color(0xffF0F0F0),
                              border: Border.all(width: 1, color: Colors.grey,),
                              borderRadius: BorderRadius.circular(17)),
                          child: Icon(
                            Icons.add,
                            size: 17,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
                            ),
                            Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "x",
                    style: TextStyle(fontSize: 16, color: Color(0xffB3B3B3)),
                  ),
                  Text(
                    widget.text2!,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
                            )
                          ]),
              ),
        ));
  }
}

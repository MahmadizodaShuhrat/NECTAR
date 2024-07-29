import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page7 extends StatelessWidget {
  final String? surat;
  final String? text1;
  const Page7({super.key, required this.surat, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 25,right: 25,bottom: 10),
        width: 173,
        height: 248,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.grey),
            borderRadius: BorderRadius.circular(16)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Image.asset(
              surat!,
              width: 51,
              height: 97,
            ),
            Column(
              children: [
                Text(
                  text1!,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black),
                ),
              const Text(
                  "1kg, Priceg",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.grey),
                ),

              ],
            ),
            
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Text("4.99",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff53B175),
                  ),
                  child: Text("+",style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          )
          ]),
        ));
  }
}

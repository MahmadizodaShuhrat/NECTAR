import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page1 extends StatelessWidget {
  final String? surat;
  final String? text1;
  const Page1({super.key, required this.surat,required this.text1});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 108,
        height: 194,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  blurRadius: 1, color: Color(0xff111827), offset: Offset(0, 1))
            ],
            color: Colors.white),
        child: Container(
          child: Column(children: [
        
            Container(
        
              width: MediaQuery.of(context).size.width,
              height: 140,
             decoration: BoxDecoration(
              image:DecorationImage(image: AssetImage(surat!),fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(8),
        
              
             ),
            ),
           
           
            Padding(
              padding:  EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text1!,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                const  Row(
                    
                    children: [
                      Icon(
                        Icons.play_circle_outline_rounded,
                        size: 10,color: Colors.blue,
                      ),
                      Text(
                        " 20 уроков  ",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff737373)),
                      ),
                      Icon(
                        Icons.access_time,
                        size: 10,color: Colors.green,
                      ),
                      Text("  16 ч",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff737373))),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
} 


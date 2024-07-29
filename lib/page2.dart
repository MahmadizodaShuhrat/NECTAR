import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page2 extends StatelessWidget {
  final String? surat;
  final String? text1;
  final Color? rangho;
  const Page2({super.key, required this.surat, required this.text1,required this.rangho});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 248,
        height: 105,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.grey[300]),
        child: Container(
          child: Row(
         
            children: [
            Image.asset(surat!,width: 71,height: 71,),
            SizedBox(width: 30,),
            Text(
              text1!,
              style:  TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: rangho),
            ),
          ]),
        ));
  }
}

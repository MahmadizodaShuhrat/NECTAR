import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridPage extends StatelessWidget {
  final String? suratay;
  final String? text1;
  final String? text2;
  final Color? rang;
  const GridPage({super.key, required this.suratay,required this.text1,required this.text2,required this.rang});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        width: 174,
        height:189,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
           
            color: rang),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
        Image.asset(suratay!,width: 111,height: 74,),
           
           Column(
mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text1!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
              Text(text2!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            ],
           )
           
          ]),
        ));
  }
} 


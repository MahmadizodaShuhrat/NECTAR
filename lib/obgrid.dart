import 'package:darvesh/page7.dart';
import 'package:flutter/material.dart';

class Obgrid extends StatefulWidget {
  const Obgrid({super.key});

  @override
  State<Obgrid> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<Obgrid> {
  
  List<String>suratho=[
    "images/pngfuel 11.png",
    "images/pngfuel 12.png",
    "images/pngfuel 13.png",
    "images/pngfuel 14.png",
    "images/pngfuel 16.png",
    "images/pngfuel 13.png",
  ];
  List<String>textyakum=[
   "Diet Coke",
   "Sprite Can",
   "Apple & Grape ",
   "Orenge Juice",
   "Coca Cola Can",
   "Pepsi Can "
  ];
 
 @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Products",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      ),
      body: Column(
        children: [
          Container(
            width: 500,
                height:600,
                child: 
                GridView.builder(
                
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: suratho.length,
          itemBuilder: (context, index) {
            return Page7(surat: suratho[index],text1: textyakum[index] ,);
          }
              ),
            ),
        ],
        
      ),
    );
  }
}
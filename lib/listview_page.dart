import 'package:darvesh/page5.dart';
import 'package:flutter/material.dart';

class ListviewPage extends StatefulWidget { 
   final String surat;
   ListviewPage({super.key,required this.surat});
  
  // final String? mevagi;

  @override
  State<ListviewPage> createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
 
  @override
  Widget build(BuildContext context) {
   
    return Container(
      margin: EdgeInsets.only(left: 16),
      width: 173,
      height: 248,
      decoration: BoxDecoration(
       
        border: Border.all(width: 2,color: Colors.grey),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset("images/banana.png",width: 103,height: 62,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Organic Bananas",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),
          Text("7pcs, Priceg",style: TextStyle(fontSize: 14,color: Color(0xff7C7C7C)),),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Text("4.99",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
               GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Page5()));
                },
               child: 
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff53B175),
                  ),
                  child: Text("+",style: TextStyle(color: Colors.white),),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
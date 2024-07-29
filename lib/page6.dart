import 'package:darvesh/bottomnavigationbar_page.dart';
import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  const Page6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
 mainAxisAlignment: MainAxisAlignment.spaceAround,         
          children: [
            Image.asset("images/cout.png",width: 269,height: 240,),
            Column(
              children: [
                Text("Your Order has been",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 28),),
                Text(" accepted",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 28),),
                Text("Your items has been placcd and is on",style: TextStyle(fontSize: 16),),
                Text("it’s way to being processed",style: TextStyle(fontSize: 16),)
              ],
            ),

            Container(
              alignment: Alignment.center,
              width: 364,
              height: 67,
              decoration: BoxDecoration(
                color: Color(0xff53B175),
                borderRadius: BorderRadius.circular(19),
              ),
              child: Text("Track Order",style: TextStyle(color: Colors.white,fontSize:18 ,fontWeight: FontWeight.w600),),
            ),
            TextButton(onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomnavigationbarPage()),
              (route) => true,
              );
            }, child: Text("Back to home",style: TextStyle(fontSize:18,fontWeight: FontWeight.w600 ),))
          ],
        )
        ),
    );
  }
}

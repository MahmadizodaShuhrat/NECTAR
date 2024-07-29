import 'package:darvesh/obgrid.dart';
import 'package:flutter/material.dart';

class FavouraitePage extends StatelessWidget {
  const FavouraitePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          "Favorurite",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          
        ),centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration:const BoxDecoration(
                border:Border(bottom: BorderSide(width: 2,color: Colors.grey))
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                   
                    children: [
                      Image.asset("images/pngfuel 11.png"),
                    const  SizedBox(width: 80,),
                     const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sprite Can",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      Text("325ml, Price",style: TextStyle(fontSize: 14,color: Colors.grey),)
                    ],
                  ),
                    ],
                  ),
                  
                const  Text("1.50 >",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)
                ],
                ),
              ),
            ),
            Container(
              decoration:const BoxDecoration(
                border:Border(bottom: BorderSide(width: 2,color: Colors.grey))
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("images/pngfuel 12.png"),
                      SizedBox(width: 80,),
        
                     const  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Diet Coke",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      Text("325ml, Price",style: TextStyle(fontSize: 14,color: Colors.grey),)
                    ],
                  ),
                    ],
                  ),
                 
                const  Text("1.50 >",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)
                ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border:Border(bottom: BorderSide(width: 2,color: Colors.grey))
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("images/pngfuel 13.png"),
                      SizedBox(width: 80,),
        
                      const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Apple & Grape Juice",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      Text("325ml, Price",style: TextStyle(fontSize: 14,color: Colors.grey),)
                    ],
                  ),
                    ],
                  ),
                 
                  Text("1.50 >",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)
                ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border:Border(bottom: BorderSide(width: 2,color: Colors.grey))
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("images/pngfuel 14.png"),
                      SizedBox(width: 80,),
        
                      const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Coca Cola Can",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      Text("325ml, Price",style: TextStyle(fontSize: 14,color: Colors.grey),)
                    ],
                  ),
                    ],
                  ),
                 
                  Text("1.50 >",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)
                ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border:Border(bottom: BorderSide(width: 2,color: Colors.grey))
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("images/pngfuel 16.png"),
                      SizedBox(width: 80,),
        
                    const  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pepsi Can ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      Text("325ml, Price",style: TextStyle(fontSize: 14,color: Colors.grey),)
                    ],
                  ),
                    ],
                  ),
                  
                const  Text("1.50 >",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)
                ],
                ),
              ),
            ),
           const SizedBox(height: 30,),
            GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Obgrid()));
              },
            child: 
              Container(
                      alignment: Alignment.center,
                      width: 364,
                      height: 67,
                      decoration: BoxDecoration(
                        color: Color(0xff53B175),
                        borderRadius: BorderRadius.circular(14)
                      ),
                      child:const Text("Add All To Cart",style: TextStyle(color: Color(0xffffffff)),),
                    ))
          ],
        ),
      ),
    );
  }
}

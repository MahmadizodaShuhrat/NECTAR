
import 'package:darvesh/account_page.dart';
import 'package:darvesh/cart_page.dart';
import 'package:darvesh/explore_page.dart';
import 'package:darvesh/favouraite_page.dart';
import 'package:darvesh/shope_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';





class BottomnavigationbarPage extends StatefulWidget {
  BottomnavigationbarPage({super.key});

  @override
  State<BottomnavigationbarPage> createState() => _MyAppState();
}

class _MyAppState extends State<BottomnavigationbarPage> {
  List<Widget> sahifaho = [
  ShopePage(),
  ExplorePage(),
  CartPage(),
  FavouraitePage(),
  AccountPage(),
  ];

  int _selectedIndex = 0;
  void changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: sahifaho[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: changeIndex,
          type: BottomNavigationBarType.fixed,
          items:const[
            BottomNavigationBarItem(icon: Icon(Icons.store_mall_directory_outlined), label: "Shop"),
           
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined), label: "Favourite") ,
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Account"),
          ],
        ),
      ),
    );
  }
}

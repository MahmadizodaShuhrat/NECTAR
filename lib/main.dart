import 'package:darvesh/splash_scrin_page.dart';
import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MyrirstPage());
}
class MyrirstPage extends StatelessWidget {
  const MyrirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      home: SplashScrinPage(),
      
    );
  }
}
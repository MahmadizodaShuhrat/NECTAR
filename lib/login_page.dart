import 'package:darvesh/bottomnavigationbar_page.dart';
import 'package:darvesh/login22_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _ParolState();
}

class _ParolState extends State<LoginPage> {
  TextEditingController _code = TextEditingController();
  var code2;
  var code1 = "darvesh";

  String a = "";
  bool num = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 70,
              ),
              const Text(
                "Sign in now",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                    color: Colors.black),
              ),
              Text(
                "Please sign in to continue our app",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.grey[30]),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14)),
                ),
              ),
              Container(
                width: 500,
                margin: EdgeInsets.only(top: 1),
                child: TextField(
                obscureText: num,
                  controller: _code,
                  decoration: InputDecoration(
                      labelText: 'password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            num = !num;
                            
                          });
                        
                        },

                        icon:  num
                            ? Icon(Icons.visibility_off_outlined)
                            : Icon(Icons.visibility_outlined),
                          
                      ),
                      errorText: a,
                      errorStyle: TextStyle(fontSize: 15, color: Colors.red),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14))),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    if (_code.text == code1) {
                      setState(
                        () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomnavigationbarPage(),
                            ),
                            (route) => false,
                          );
                        },
                      );
                      a = "правилний пароль";
                      StrutStyle.fromTextStyle(TextStyle(color: Colors.green));
                    } else {
                      a = "неправилний пароль";
                      StrutStyle.fromTextStyle(TextStyle(color: Colors.green));
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 335,
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xff53B175)),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide.none,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don’t have an account?",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff707B81)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login22Page()));
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xffFF7029)),
                    ),
                  ),
                ],
              ),
              Text(
                "Or connect",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff707B81)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("images/facebook.jpeg"),
                  Image.asset("images/insta.jpeg"),
                  Image.asset("images/tvitter.jpeg"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

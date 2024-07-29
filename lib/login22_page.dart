import 'package:flutter/material.dart';

class Login22Page extends StatefulWidget {
  Login22Page({super.key});

  @override
  State<Login22Page> createState() => _ParolState();
}

class _ParolState extends State<Login22Page> {
  TextEditingController _code = TextEditingController();
  var code2;
  var code1 = "";

  String a = "";

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
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14)),
             labelText: "Name"
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14)),
                 labelText: "Email"
                ),
              ),
              Container(
                width: 500,
                margin: EdgeInsets.only(top: 1),
                child: TextField(
                  controller: _code,
                  decoration: InputDecoration(
                      labelText: 'password',
                      errorText: a,
                      errorStyle: TextStyle(fontSize: 15, color: Colors.red),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14)
                          
                          ),suffixIcon: Icon(Icons.remove_red_eye_outlined),
                          ),
                          
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    if (_code.text == code1) {
                      setState(
                        () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login22Page(),
                              ));
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
                const  Text(
                    "Don’t have an account?",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff707B81)),
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Login22Page()));
                  }, child: 
                  Text(
                    "Sign up",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xffFF7029)),
                  ),),
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

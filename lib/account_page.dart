import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        appBar: AppBar(
            title: Row(
          children: [
            Container(
              width: 63,
              height: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("images/Rectangle 82.png"),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Afsar Hossen",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "Imshuvo97@gmail.com",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
          ],
        )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.shopping_bag_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Orders")
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined)
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.account_circle_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Text("My Details")
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined)
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Delivery Address")
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined)
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.credit_card_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Payment Methods")
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined)
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.local_offer_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Promo Cord")
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined)
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.notifications_none_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Notifecations ")
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined)
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.help_outline_rounded,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Help")
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined)
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.info_outline_rounded),
                        SizedBox(
                          width: 20,
                        ),
                        Text("About")
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined)
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
              setState(() {
                return;
      
              });
              },
              child: Container(
                width: 364,
                height: 67,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color(0xffF2F3F2)),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(Icons.exit_to_app),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "Log Out",
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ),
         
          ],
        ),
      ),
    );
  }
}
 void showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.white, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Выйти из приложения?',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop(); // Close the dialog
                      },
                      child: Text('Отмена'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
Navigator.pop(context);
                      },
                      child: Text('Выйти'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

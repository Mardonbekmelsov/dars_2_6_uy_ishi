import 'package:dars_6_uy_ishi/functions/users.dart';
import 'package:dars_6_uy_ishi/pages/page1.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  List<Map<String, dynamic>> users = [
    {
      "image": "assets/images/user1.png",
      "name": "Anamwp",
      "message": "Your order just arrived",
      "time": "20:00"
    },
    {
      "image": "assets/images/user2.png",
      "name": "Guy Hawkins",
      "message": "Your order just arrived",
      "time": "20:00"
    },
    {
      "image": "assets/images/user3.png",
      "name": "Leslie Alexander",
      "message": "Your order just arrived",
      "time": "20:00"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade200,
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 254, 246, 237),
                      borderRadius: BorderRadius.circular(15)),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:  (context)=>FirstPage()));
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Color.fromARGB(255, 218, 99, 23),
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              "Chats",
              style: TextStyle(
                  fontSize: 31,
                  color: Colors.black,
                  fontWeight: FontWeight.w900),
            ),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (var user in users)
                      UserRow(
                        imageAdress: user["image"],
                        name: user["name"],
                        message: user["message"],
                        time: user["time"],
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
       bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/home_icon.png"), label: ""),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/profile_icon.png"),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/cart_icon.png"), label: ""),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ),
                  );
                },
                icon: Image.asset("assets/images/chat_icon.png"),
              ),
              label: ""),
        ],
      ),
    );
  }
}

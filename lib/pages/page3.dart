import 'package:dars_6_uy_ishi/pages/page2.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage()));
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
            Container(
              child: Row(
                children: [
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

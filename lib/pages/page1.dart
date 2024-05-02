import 'dart:ui';

import 'package:dars_6_uy_ishi/functions/make_food.dart';
import 'package:dars_6_uy_ishi/pages/page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstPage extends StatelessWidget {
  List<Map<String, dynamic>> foods = [
    {
      "image": "assets/images/food_1.png",
      "food": "Herbal Pancake",
      "restaurant": "Warung Herbal",
      "price": 7
    },
    {
      "image": "assets/images/food_2.png",
      "food": "Fruit Salad",
      "restaurant": "Wijie Resto",
      "price": 5
    },
    {
      "image": "assets/images/food_3.png",
      "food": "Green Noodle",
      "restaurant": "Noodle Home",
      "price": 15
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.grey.shade200),
        padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Find Your\nFavourite Food",
                    style: TextStyle(
                        fontSize: 31,
                        fontWeight: FontWeight.w900,
                        color: Colors.black)),
                Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/ring_icon.png"),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 3,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 250, 240, 230),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/search_icon.png")),
                        const Text("What do you want to order?",
                            style: TextStyle(
                              color: Color.fromARGB(255, 241, 190, 156),
                            ))
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 250, 240, 230),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/tune_icon.png")),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 254, 246, 237)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Soup",
                        style: TextStyle(
                            color: Color.fromARGB(255, 218, 99, 23),
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Container(
                              height: 20,
                              child: Image.asset("assets/images/x_icon.png"))),
                    ],
                  ),
                ),
              ],
            ),
            const Text(
              "Popular Menu",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (var food in foods)
                      FoodRow(
                        imageAdress: food["image"],
                        foodName: food["food"],
                        restaurant: food["restaurant"],
                        foodPrice: food["price"],
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

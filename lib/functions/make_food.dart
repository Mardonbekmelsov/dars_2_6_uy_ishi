import 'package:flutter/material.dart';

class FoodRow extends StatelessWidget {
  String imageAdress;
  String foodName;
  String restaurant;
  int foodPrice;

  FoodRow(
      {super.key, required this.imageAdress,
      required this.foodName,
      required this.restaurant,
      required this.foodPrice});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  SizedBox(height: 100, child: Image.asset(imageAdress)),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        foodName,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        restaurant,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Text(
                "$foodPrice\$",
                style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 254, 173, 29)),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

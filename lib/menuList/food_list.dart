import 'package:flutter/material.dart';

import '../models/food.dart';

class FoodList extends StatelessWidget {
  final Food food;
  const FoodList({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.only(left: 25),
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            food.imagePath,
            height: 140,
          ),
          Text(
            food.name,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$ ' + food.price),
                
                Row(
                  children: [
                    Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                  food.ratting,
                  style: TextStyle(color: Colors.grey),
                )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

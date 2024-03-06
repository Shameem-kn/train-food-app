import 'package:flutter/material.dart';
import 'package:train_food_app/global/display_card.dart';

class RestaurantDisplyaCard extends StatelessWidget {
  const RestaurantDisplyaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          DisplayCard(image: "assets/images/breakfast.png"),
          Text("Restaurant"),
          Row(
            children: [
              Icon(Icons.star),
              Text("rating"),
              Text("review no"),
            ],
          )
        ],
      ),
    );
  }
}

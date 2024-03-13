import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Food item name"),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(
                  color: Colors.green, // Set the border color to green
                  width: 1, // You can adjust the border width as needed
                ),
              ),
              height: 36.h,
              width: 100.w, // Adjust width as needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(onTap: () {}, child: Icon(Icons.remove)),
                  Text("data"),
                  InkWell(onTap: () {}, child: Icon(Icons.add)),
                ],
              ),
            ),
            SizedBox(
              width: 20.h,
            ),
            Text("price"),
          ],
        ),
        SizedBox(
          height: 10.h,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_food_app/constants/constants.dart';
import 'package:train_food_app/global/app_bar_custom.dart';
import 'package:train_food_app/global/display_card.dart';
import 'package:train_food_app/global/search_field.dart';
import 'package:train_food_app/presentation/user/dish_list_page/view/dish_list_page.dart';
import 'package:train_food_app/presentation/user/restaurant_list_page/widgets/restaurant_display_card.dart';

class RestaurantListPage extends StatefulWidget {
  const RestaurantListPage({super.key});

  @override
  State<RestaurantListPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(),
      body: Padding(
        padding: EdgeInsets.only(
          left: 40.w,
          right: 40.w,
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    const SearchField(),
                    SizedBox(
                      height: 40.h,
                    ),
                    Center(
                      child: Text(
                        "Here's what we found",
                        style: TextStyle(
                            color: ConstantColors().primaryColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    GridView.builder(
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: .75,
                          mainAxisSpacing: 3.h,
                          crossAxisSpacing: 20.h,
                        ),
                        shrinkWrap: true,
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DishListPage()));
                              },
                              child: Container(
                                  padding: const EdgeInsets.all(5),
                                  // height: 195.h,
                                  width: 143.w,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      DisplayCard(
                                          image: "assets/images/breakfast.png"),
                                      SizedBox(
                                        height: 7.h,
                                      ),
                                      Text(
                                        "Restaurant",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color:
                                                ConstantColors().primaryColor,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Text(
                                            "4.4",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Text(
                                            "524",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      )
                                    ],
                                  )));
                        }),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 150.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: Colors.green, // Background color
                    borderRadius: BorderRadius.circular(20), // Border radius
                  ),
                  child: const Center(
                    child: Text(
                      "Your Order",
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontWeight: FontWeight.bold, // Text weight
                        fontSize: 16, // Text size
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

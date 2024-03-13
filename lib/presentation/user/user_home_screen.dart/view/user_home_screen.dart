import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_food_app/constants/constants.dart';
import 'package:train_food_app/global/app_bar_custom.dart';
import 'package:train_food_app/global/display_card.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:train_food_app/global/search_field.dart';
import 'package:train_food_app/presentation/user/restaurant_list_page/view/restaurant_list_page.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({super.key});

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 40.w, right: 40.w, bottom: 10.h),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 28.h,
                    ),
                    Center(
                      child: Text(
                        "Find the best foods",
                        style: TextStyle(
                          color: ConstantColors().primaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "near you!",
                        style: TextStyle(
                          color: ConstantColors().primaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 37.h,
                    ),
                    const SearchField(),
                    SizedBox(
                      height: 30.h,
                    ),
                    GridView.builder(
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 20.h,
                            crossAxisSpacing: 20.h,
                            childAspectRatio: 1),
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                // Navigator.of(context).push(MaterialPageRoute(
                                //     builder: ((context) => SelectedMerchPage())));
                              },
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const RestaurantListPage()));
                                },
                                child: DisplayCard(
                                  titleText: "Breakfast",
                                  image: "assets/images/breakfast.png",
                                ),
                              ));
                        }),
                  ],
                ),
              ),
              Container(
                width: 190,
                height: 60,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

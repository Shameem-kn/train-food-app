import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_food_app/constants/constants.dart';
import 'package:train_food_app/global/app_bar_custom.dart';
import 'package:train_food_app/global/display_card.dart';
import 'package:train_food_app/global/search_field.dart';
import 'package:train_food_app/presentation/user/dish_list_page/widget/dish_card.dart';

class DishListPage extends StatefulWidget {
  const DishListPage({Key? key}) : super(key: key);

  @override
  State<DishListPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<DishListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h),
              Text(
                "Find what you like at",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ConstantColors().primaryColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 20.h),
              const Text(
                "Restaurant",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: ConstantColors().primaryColor,
                    size: 18,
                  ),
                  SizedBox(width: 5.w),
                  const Text(
                    "4.4",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  const Text(
                    "524",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              const Text(
                "Location",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.h),
              const SearchField(),
              SizedBox(height: 10.h),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return DishCard();
                },
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // Border radius
                    ),
                  ),
                  child: Container(
                    width: 150.w,
                    height: 50.h,
                    alignment: Alignment.center,
                    child: const Text(
                      "Your Order",
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontWeight: FontWeight.bold, // Text weight
                        fontSize: 16, // Text size
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:train_food_app/constants/constants.dart';
// import 'package:train_food_app/global/app_bar_custom.dart';
// import 'package:train_food_app/global/display_card.dart';
// import 'package:train_food_app/global/search_field.dart';
// import 'package:train_food_app/presentation/user/dish_list_page/widget/dish_card.dart';

// class DishListPage extends StatefulWidget {
//   const DishListPage({super.key});

//   @override
//   State<DishListPage> createState() => _RestaurantPageState();
// }

// class _RestaurantPageState extends State<DishListPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const AppBarCustom(),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.only(
//             left: 40.w,
//             right: 40.w,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 20.h,
//               ),
//               Text(
//                 "Find what you like at",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     color: ConstantColors().primaryColor,
//                     fontSize: 20,
//                     fontWeight: FontWeight.w900),
//               ),
//               SizedBox(
//                 height: 20.h,
//               ),
//               const Text(
//                 "Restaurant",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontSize: 32,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black),
//               ),
//               SizedBox(
//                 height: 3.h,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(
//                     Icons.star,
//                     color: ConstantColors().primaryColor,
//                     size: 18,
//                   ),
//                   SizedBox(
//                     width: 5.w,
//                   ),
//                   const Text(
//                     "4.4",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black),
//                   ),
//                   SizedBox(
//                     width: 10.w,
//                   ),
//                   const Text(
//                     "524",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(color: Colors.grey),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 5.h,
//               ),
//               const Text(
//                 "Location",
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(
//                 height: 30.h,
//               ),
//               const SearchField(),
//               SizedBox(
//                 height: 10.h,
//               ),
//               ListView.builder(
//                   scrollDirection: Axis.vertical,
//                   shrinkWrap: true,
//                   itemCount: 6,
//                   itemBuilder: (context, index) {
//                     return DishCard();
//                   }),
//               Padding(
//                 padding: const EdgeInsets.all(5.0),
//                 child: Container(
//                   width: 150.w,
//                   height: 50.h,
//                   decoration: BoxDecoration(
//                     color: Colors.green, // Background color
//                     borderRadius: BorderRadius.circular(20), // Border radius
//                   ),
//                   child: const Center(
//                     child: Text(
//                       "Your Order",
//                       style: TextStyle(
//                         color: Colors.white, // Text color
//                         fontWeight: FontWeight.bold, // Text weight
//                         fontSize: 16, // Text size
//                       ),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

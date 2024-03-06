import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_food_app/global/display_card.dart';
import '../../../../constants/constants.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_food_app/global/display_card.dart';
import '../../../../constants/constants.dart';

class DishCard extends StatelessWidget {
  const DishCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // color: Colors.green,
          width: 300.w,
          height: 200.h,
          child: Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 0),
            child: Row(
              children: [
                DisplayCard(image: "assets/images/breakfast.png"),
                SizedBox(width: 3.w),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 40.h, 0, 20.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Dish name",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            color: ConstantColors().primaryColor,
                            size: 18.sp,
                          ),
                          SizedBox(width: 5.w),
                          const Text(
                            "4.4",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          const Text(
                            "524",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      const Text(
                        " #200",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 10.h,
          left: 30.w,
          child: Wrap(children: [
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
                  Icon(Icons.remove),
                  Text("data"),
                  Icon(Icons.add),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   color: Colors.green,
//                   width: 400.w,
//                   height: 200.h,
//                   child: Padding(
//                     padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 0),
//                     child: Row(
//                       children: [
//                         DisplayCard(image: "assets/images/breakfast.png"),
//                         SizedBox(width: 15.w),
//                         Padding(
//                           padding: EdgeInsets.fromLTRB(20.w, 40.h, 0, 20.h),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text(
//                                 "Dish name",
//                                 textAlign: TextAlign.left,
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(height: 5.h),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Icon(
//                                     Icons.star,
//                                     color: ConstantColors().primaryColor,
//                                     size: 18.sp,
//                                   ),
//                                   SizedBox(width: 5.w),
//                                   const Text(
//                                     "4.4",
//                                     textAlign: TextAlign.left,
//                                     style: TextStyle(
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//                                   SizedBox(width: 10.w),
//                                   const Text(
//                                     "524",
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(color: Colors.grey),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(height: 10.h),
//                               const Text(
//                                 " #200",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 10.h,
//                   left: 25.w,
//                   child: Wrap(children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.white,
//                       ),
//                       height: 36.h,
//                       width: 100.w, // Adjust width as needed
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Icon(Icons.remove),
//                           Text("data"),
//                           Icon(Icons.add),
//                         ],
//                       ),
//                     ),
//                   ]),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DishCard extends StatelessWidget {
//   const DishCard({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   color: Colors.green,
//                   width: 400.w,
//                   height: 250.h,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
//                     child: Row(
//                       children: [
//                         DisplayCard(image: "assets/images/breakfast.png"),
//                         SizedBox(width: 15.w),
//                         Padding(
//                           padding: const EdgeInsets.fromLTRB(20, 40, 0, 20),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text(
//                                 "Dish name",
//                                 textAlign: TextAlign.left,
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(height: 5.h),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Icon(
//                                     Icons.star,
//                                     color: ConstantColors().primaryColor,
//                                     size: 18.sp,
//                                   ),
//                                   SizedBox(width: 5.w),
//                                   const Text(
//                                     "4.4",
//                                     textAlign: TextAlign.left,
//                                     style: TextStyle(
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//                                   SizedBox(width: 10.w),
//                                   const Text(
//                                     "524",
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(color: Colors.grey),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(height: 10.h),
//                               const Text(
//                                 " #200",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 10,
//                   left: 10,
//                   right: 10,
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Colors.white,
//                     ),
//                     height: 36.h,
//                     width: 20.w,
//                     child: const Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Icon(Icons.remove),
//                         Text("data"),
//                         Icon(Icons.add),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



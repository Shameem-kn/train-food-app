// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:train_food_app/constants/constants.dart';
// import 'package:train_food_app/presentation/user/cart/widgets/food_tile.dart';

// class CartPage extends StatelessWidget {
//   const CartPage({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Container(
//                 height: 100,
//                 decoration: BoxDecoration(
//                   color: ConstantColors()
//                       .primaryColor, // Change the background color as needed
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(0),
//                     topRight: Radius.circular(0),
//                     bottomLeft: Radius.circular(40),
//                     bottomRight: Radius.circular(40),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Text(
//                                 "Train No",
//                               ),
//                               SizedBox(
//                                 width: 20.h,
//                               ),
//                               Text(
//                                 "Journey Date",
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10.h,
//                           ),
//                           Text(
//                             "Delivery location",
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         width: 20.w,
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: Icon(Icons.arrow_drop_down),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(
//                         15.0), // Adjust the value for roundness
//                   ),
//                   elevation: 5,
//                   color: Color(0xFFF5F5F5),
//                   child: ListView.builder(
//                     physics: NeverScrollableScrollPhysics(),
//                     shrinkWrap: true,
//                     scrollDirection: Axis.vertical,
//                     itemCount: 12,
//                     itemBuilder: (context, index) {
//                       return FoodTile();
//                     },
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               InkWell(
//                 onTap: () {},
//                 child: Container(
//                   width: 300,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.green, // Green color
//                     borderRadius: BorderRadius.circular(20), // Rounded corners
//                   ),
//                   child: Center(
//                     child: Text(
//                       'proceed to pay',
//                       style: TextStyle(
//                         color: Colors.white, // Text color
//                         fontSize: 20,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_food_app/constants/constants.dart';
import 'package:train_food_app/presentation/user/cart/widgets/food_tile.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: ConstantColors()
                      .primaryColor, // Change the background color as needed
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Train No",
                              ),
                              SizedBox(
                                width: 20.h,
                              ),
                              Text(
                                "Journey Date",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Delivery location",
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        15.0), // Adjust the value for roundness
                  ),
                  elevation: 5,
                  color: Color(0xFFF5F5F5),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 16,
                    itemBuilder: (context, index) {
                      return FoodTile();
                    },
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green, // Green color
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                  ),
                  child: Center(
                    child: Text(
                      'proceed to pay',
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

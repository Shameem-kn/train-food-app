import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_food_app/data/delivery_location/delivery_location.dart';
import 'package:train_food_app/global/app_bar_custom.dart';
import 'package:train_food_app/presentation/user/user_home_screen.dart/view/user_home_screen.dart';

import '../../../../global/textfield_custom.dart';

class DeliveryInfoPage extends StatelessWidget {
  final TextEditingController _trainNumberController = TextEditingController();
  final TextEditingController _trainDateController = TextEditingController();
  final TextEditingController _deliveryLocationController =
      TextEditingController();
  DeliveryInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 40.w, right: 40.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Help Us to Help You!!",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            // Text(
            //   "Enter your train number",
            //   style: TextStyle(
            //     color: Colors.green,
            //     fontSize: 18,
            //     // fontWeight: FontWeight.bold,
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // TextFieldCustom(
            //     controller: _trainNumberController, hintText: "Train Number"),
            // SizedBox(
            //   height: 20,
            // ),
            // Text(
            //   "Enter the starting date of the train",
            //   style: TextStyle(
            //     color: Colors.green,
            //     fontSize: 18,
            //     // fontWeight: FontWeight.bold,
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // TextFieldCustom(
            //     controller: _trainDateController, hintText: "dd/mm/yyyy"),
            SizedBox(
              height: 20,
            ),
            Text(
              "Enter your delivery location",
              style: TextStyle(
                color: Colors.green,
                fontSize: 18,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFieldCustom(
                controller: _deliveryLocationController,
                hintText: "delivery destination"),
            SizedBox(
              height: 40.h,
            ),
            InkWell(
              onTap: () {
                DeliveryLocation.currentLocation =
                    _deliveryLocationController.text;
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const UserHomeScreen()));
              },
              child: Container(
                width: 332.w,
                height: 54.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.green,
                ),
                child: const Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

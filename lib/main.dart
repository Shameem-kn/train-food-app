import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_food_app/constants/constants.dart';
import 'package:train_food_app/presentation/user/cart/view/cart_page.dart';
import 'package:train_food_app/presentation/user/cart/widgets/food_tile.dart';
import 'package:train_food_app/presentation/user/delivery_info_page/view/delivery_info_page.dart';
import 'package:train_food_app/presentation/user/dish_list_page/view/dish_list_page.dart';
import 'package:train_food_app/presentation/user/dish_list_page/widget/dish_card.dart';
import 'package:train_food_app/presentation/user/login_page/view/user_login_page.dart';
import 'package:train_food_app/presentation/user/splash_screen/view/splash_screen.dart';

import 'package:train_food_app/presentation/user/user_home_screen.dart/view/user_home_screen.dart';
import 'package:train_food_app/presentation/user/user_signup_page/view/user_signup_page.dart';
import 'package:train_food_app/presentation/user/user_signup_page/view/user_signup_page1.dart';

import 'presentation/user/user_signup_page/view/user_signup_page2.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: ConstantColors().primaryColor,
            fontFamily: "Inter",
            textTheme: TextTheme(
              // Define colors for various text styles
              bodyLarge: TextStyle(
                  color:
                      ConstantColors().primaryColor), // Default body text color

              // You can define more text styles as needed
            ),
          ),
          home: child,
          debugShowCheckedModeBanner: false,
        );
      },
      child: SplashScreen(),
    );
  }
}

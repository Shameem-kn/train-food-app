import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:train_food_app/global/app_bar_custom.dart';
import 'package:train_food_app/presentation/user/delivery_info_page/view/delivery_info_page.dart';
import 'package:train_food_app/presentation/user/user_home_screen.dart/view/user_home_screen.dart';
import 'package:train_food_app/presentation/user/user_signup_page/view/user_signup_page1.dart';

import '../../../../global/container_custom.dart';
import '../../../../global/textfield_custom.dart';
import '../../../../services/http_services.dart';
import '../../user_signup_page/view/user_signup_page.dart';
import '../login_page_model/login_page_model.dart';

class UserLoginPage extends StatefulWidget {
  const UserLoginPage({super.key});

  @override
  State<UserLoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<UserLoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Padding(
              padding: EdgeInsets.fromLTRB(29.w, 0, 29.w, 10.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150.h,
                  ),
                  const Text(
                    "Welcome Back!",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        CustomContainer(
                          width: 332.w,
                          height: 54.h,
                          radius: 14,
                          color: null,
                          child: TextFieldCustom(
                              controller: _usernameController,
                              hintText: "User name"),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        CustomContainer(
                          width: 332.w,
                          height: 54.h,
                          radius: 14,
                          color: null,
                          child: TextFieldCustom(
                              controller: _passwordController,
                              hintText: "Password",
                              suffixIcon: Icons.visibility),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        const Center(
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        InkWell(
                          onTap: () async {
                            LoginModel loginData = LoginModel(
                                username: _usernameController.text,
                                password: _passwordController.text);
                            try {
                              await HttpServices().userLogIn(loginData);
                              // Handle successful login
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const UserHomeScreen(), // Navigate to home page after login
                                ),
                              );
                            } on HttpException catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text("HTTP Error: ${e.message}")),
                              );
                            } catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text("An error occurred: $e")),
                              );
                            }
                          },
                          child: CustomContainer(
                              width: 332.w,
                              height: 54.h,
                              radius: 14,
                              color: Colors.green,
                              child: const Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Dont have an account?",
                              style: TextStyle(
                                  // color: Colors.red,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const UserSignUpPage1()));
                              },
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_food_app/global/app_bar_custom.dart';
import 'package:train_food_app/presentation/user/login_page/view/user_login_page.dart';
import 'package:train_food_app/presentation/user/user_home_screen.dart/view/user_home_screen.dart';
import 'package:train_food_app/presentation/user/user_signup_page/view/user_signup_page2.dart';

import '../../../../global/container_custom.dart';
import '../../../../global/textfield_custom.dart';
import '../../../../services/http_services.dart';
import '../../user_signup_page/view/user_signup_page.dart';

class UserSignUpPage1 extends StatefulWidget {
  const UserSignUpPage1({super.key});

  @override
  State<UserSignUpPage1> createState() => _LoginPageState();
}

class _LoginPageState extends State<UserSignUpPage1> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
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
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        TextFieldCustom(
                            controller: _usernameController,
                            hintText: "User name"),
                        SizedBox(
                          height: 24.h,
                        ),
                        TextFieldCustom(
                          controller: _phoneNumberController,
                          hintText: "Phone number",
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        TextFieldCustom(
                          controller: _passwordController,
                          hintText: "Password",
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        TextFieldCustom(
                            controller: _confirmPasswordController,
                            hintText: "Confirm Password",
                            suffixIcon: Icons.visibility),
                        SizedBox(
                          height: 40.h,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => UserSignUpPage2(
                                      username: _usernameController.text,
                                      phoneNumber: _phoneNumberController.text,
                                      password: _passwordController.text,
                                    )));
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
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account?",
                              style: TextStyle(
                                  // color: Colors.red,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const UserLoginPage()));
                              },
                              child: const Text(
                                "Log in",
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

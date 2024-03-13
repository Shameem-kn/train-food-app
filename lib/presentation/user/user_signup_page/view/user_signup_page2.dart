import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_food_app/presentation/user/login_page/view/user_login_page.dart';
import 'package:train_food_app/presentation/user/user_home_screen.dart/view/user_home_screen.dart';
import 'package:train_food_app/presentation/user/user_signup_page/view/user_signup_page1.dart';
import 'package:train_food_app/services/http_services.dart';
import '../../../../global/textfield_custom.dart';
import 'package:image_picker/image_picker.dart';

class UserSignUpPage2 extends StatefulWidget {
  final String username;
  final String phoneNumber;
  final String password;
  const UserSignUpPage2(
      {super.key,
      required this.username,
      required this.phoneNumber,
      required this.password});

  @override
  State<UserSignUpPage2> createState() => _LoginPageState();
}

class _LoginPageState extends State<UserSignUpPage2> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  File? image;
  final _picker = ImagePicker();
  bool showSpinner = false;
  Future getImage() async {
    final pickedFile =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 80);
    if (pickedFile != null) {
      image = File(pickedFile.path);
      setState(() {});
    } else {
      print("no image selected");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => UserSignUpPage1()));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black.withOpacity(.3),
                  )),
            ],
          ),
          title: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              const Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ],
          ),
          toolbarHeight: 100,
          centerTitle: true,
        ),
        resizeToAvoidBottomInset: true,
        body: GestureDetector(
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
                  height: 10.h,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Center(
                        child: InkWell(
                          onTap: getImage,
                          child: SizedBox(
                            width: 125,
                            height: 120,
                            child: Stack(
                              children: [
                                Center(
                                  child: CircleAvatar(
                                      radius: 50,
                                      child: Center(
                                        child: ClipOval(
                                          child: SizedBox(
                                            width: 100,
                                            height: 100,
                                            child: (image == null)
                                                ? Image.asset(
                                                    "assets/images/profilepic.jpg",
                                                    fit: BoxFit.cover,
                                                  )
                                                : Image.file(
                                                    File(image!.path),
                                                    fit: BoxFit.cover,
                                                  ),
                                          ),
                                        ),
                                      )),
                                ),
                                Positioned(
                                  right: 10,
                                  bottom: 8,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          Colors.green, // Color of the circle
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.add,

                                        color:
                                            Colors.white, // Color of the icon
                                        size: 20, // Size of the icon
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      TextFieldCustom(
                          controller: _nameController, hintText: "Name"),
                      SizedBox(
                        height: 24.h,
                      ),
                      TextFieldCustom(
                        controller: _dobController,
                        hintText: "Date of birth",
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      TextFieldCustom(
                        controller: _emailController,
                        hintText: "Email",
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      InkWell(
                        onTap: () async {
                          try {
                            await HttpServices().userSignUp(
                              username: widget.username,
                              password: widget.password,
                              email: _emailController.text,
                              phone: widget.phoneNumber,
                              name: _nameController.text,
                              image: image,
                            );
                            // Handle successful registration
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => const UserLoginPage(),
                              ),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    "User has been successfully registered, try logging in again"),
                              ),
                            );
                          } on HttpException catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text("HTTP Error: ${e.message}")),
                            );
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("An error occurred: $e")),
                            );
                          }
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
                              "Sign Up",
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
                                  builder: (context) => const UserLoginPage()));
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
        ));
  }
}

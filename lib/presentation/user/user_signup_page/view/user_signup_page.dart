import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../global/textfield_custom.dart';
import 'package:badges/badges.dart' as badges;

import '../../login_page/view/user_login_page.dart';

class UserSignUpPage extends StatefulWidget {
  const UserSignUpPage({Key? key}) : super(key: key);

  @override
  State<UserSignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<UserSignUpPage> {
  int _currentStep = 0;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Train food App"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Stepper(
              elevation: 0,
              type: StepperType.horizontal,
              currentStep: _currentStep,
              onStepContinue: () {
                setState(() {
                  if (_currentStep < 1) {
                    _currentStep += 1;
                  } else {
                    print('Confirm Button Pressed');
                  }
                });
              },
              onStepCancel: () {
                setState(() {
                  if (_currentStep > 0) {
                    _currentStep -= 1;
                  }
                });
              },
              controlsBuilder: (BuildContext context, ControlsDetails details) {
                return (_currentStep == 1)
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: details.onStepCancel,
                            child: const Text(
                              "Back",
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            onPressed: details.onStepContinue,
                            child: const Text(
                              "SignUp",
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: details.onStepCancel,
                            child: const Text(
                              "Back",
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            onPressed: details.onStepContinue,
                            child: const Text(
                              "Continue",
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      );
              },
              steps: <Step>[
                Step(
                  title: const Text('Account Details'),
                  state: _currentStep >= 0
                      ? StepState.complete
                      : StepState.editing,
                  isActive: _currentStep == 0,
                  content: Column(
                    children: [
                      TextFieldCustom(
                        controller: _usernameController,
                        hintText: 'Username',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldCustom(
                        controller: _mobileController,
                        hintText: 'Phone number',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldCustom(
                        controller: _passwordController,
                        hintText: 'Password',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldCustom(
                        controller: _confirmPasswordController,
                        hintText: 'Confirm Password',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Step(
                  state: _currentStep >= 1
                      ? StepState.complete
                      : StepState.editing,
                  isActive: _currentStep == 1,
                  title: const Text('Personal Details'),
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      badges.Badge(
                        position: badges.BadgePosition.bottomEnd(
                            bottom: -10, end: -10),
                        badgeStyle: badges.BadgeStyle(
                          badgeColor: Colors.green,
                        ),
                        badgeContent: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 50,
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      TextFieldCustom(
                        controller: _nameController,
                        hintText: 'Name',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldCustom(
                        controller: _dobController,
                        hintText: 'Date of Birth ',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldCustom(
                        controller: _addressController,
                        hintText: "Address",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldCustom(
                        controller: _emailController,
                        hintText: "Email Adress",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
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
      )),
    );
  }
}

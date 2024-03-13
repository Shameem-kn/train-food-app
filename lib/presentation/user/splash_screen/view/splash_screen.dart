import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:train_food_app/presentation/user/login_page/view/user_login_page.dart';
import 'package:train_food_app/presentation/user/user_home_screen.dart/view/user_home_screen.dart';
import 'dart:convert';

import '../../../../utils/auth_utils/auth_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    fetchData(); // Call fetchData when the widget initializes
  }

  Future<void> fetchData() async {
    bool loggedIn = await AuthUtils.isLoggedIn();
    if (loggedIn) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => UserHomeScreen()));
    } else {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => UserLoginPage()));
    }

    // try {
    //   // Simulating API call delay
    //   await Future.delayed(Duration(seconds: 2));

    //   // TODO: Replace this with your actual API endpoint
    //   var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

    //   if (response.statusCode == 200) {
    //     var jsonData = jsonDecode(response.body);
    //     print('Fetched Data: $jsonData');

    //     // Navigate to the next screen or do any other necessary action here
    //     // For example:
    //     // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    //   } else {
    //     print('Failed to fetch data: ${response.statusCode}');
    //     // Handle error or retry logic here
    //   }
    // } catch (e) {
    //   print('Error fetching data: $e');
    //   // Handle error or retry logic here
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              ),
              SizedBox(height: 16),
              Text(
                'Please wait while we fetch the details',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

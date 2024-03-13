import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:train_food_app/presentation/user/login_page/login_page_model/login_page_model.dart';
import 'package:train_food_app/utils/auth_utils/auth_utils.dart';
import 'package:train_food_app/utils/token_utils/token_utils.dart';

class HttpServices {
  // final baseUrl = Uri.parse();

  Future<void> userSignUp({
    required String username,
    required String password,
    required String email,
    required String phone,
    required String name,
    File? image,
  }) async {
    try {
      final request = http.MultipartRequest(
        "POST",
        Uri.parse("http://10.0.2.2:8000/customer/register/"),
      );

      if (image != null) {
        request.files.add(
          await http.MultipartFile.fromPath(
            'profile_picture',
            image.path,
          ),
        );
      }

      request.fields.addAll({
        "username": username,
        "password": password,
        "email": email,
        "phone": phone,
        "name": name,
      });

      var response = await request.send();

      if (response.statusCode == 200) {
        print("User successfully registered");
        // Optionally, you can parse the response here if needed
      } else {
        throw HttpException('Error registering user: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error during user registration: $e');
    }
  }

  Future userLogIn(LoginModel loginData) async {
    try {
      final response = await http.post(
        Uri.parse("http://10.0.2.2:8000/customer/token/"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(loginData.toJson()),
      );

      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        String token = responseData['token'];
        // TokenUtils().saveToken(token);
        print('Login Successful. Token: $token');
        AuthUtils.setLoggedIn(true);
      } else {
        throw HttpException('Login Failed: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error during login: $e');
    }
  }
}

Future signUp(String username, String password, String email, String phone,
    String name, String description, String address, String website) async {
  print("object");
  // PostModel a =
  //     PostModel(userId: userId!, id: 101, title: title, body: description);

  // var body = {
  //   "username": username,
  //   "email": email,
  //   "password": password,
  //   "phone": phone,
  //   "name": name,
  //   "description": description,
  //   "address": address,
  //   "website": website,
  // };
  // var body = {
  //   "username": "chicking",
  //   "email": "kfc@gmail.com",
  //   "password": "123",
  //   "phone": "12345678",
  //   "name": "chicking",
  //   "description": "fried",
  //   "address": "kochi",
  //   "website": "https://www.chickingindia.in/",
  // };

  var response = await http.post(
    Uri.parse("http://10.0.2.2:8000/vendor/register/"),
    body: {
      "username": "chicking",
      "email": "kfc@gmail.com",
      "password": "123",
      "phone": "12345678",
      "name": "chicking",
      "description": "fried",
      "address": "kochi",
      "website": "https://www.chickingindia.in/",
    },
  );

  if (response.statusCode == 200) {
    print("user succesfully regiestered");
    var data = jsonDecode(response.body.toString());
    print(data);
  } else {
    var data = jsonDecode(response.body.toString());
    print(data);
  }
}

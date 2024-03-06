import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpServices {
  // final baseUrl = Uri.parse();

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

  Future logIn(
    String username,
    String password,
  ) async {
    // PostModel a =
    //     PostModel(userId: userId!, id: 101, title: title, body: description);

    var body = {
      "username": username,
      "password": password,
    };

    var response = await http.post(
      Uri.parse("http://10.0.2.2:8000/vendor/token/"),
      body: body,
    );
    if (response.statusCode == 200) {
      print("Login Successful");
      var data = jsonDecode(response.body.toString());
      print(data);
    } else {
      print("Failed to register user: ${response.statusCode}");
      var data = jsonDecode(response.body.toString());
      print(data);
    }
  }
}

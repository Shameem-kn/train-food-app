// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// class TokenUtils {
//   final FlutterSecureStorage storage = const FlutterSecureStorage();

//   saveToken(String value) async {
//     await storage.write(key: "token", value: value);
//   }

//   Future<String> getToken(String key) async {
//     String value = await storage.read(key: "token") ?? 'No data found!';
//     return value;
//   }

//   deleteToken(String key) async {
//     await storage.delete(key: "token");
//   }
// }
// // class TokenUtils {
// //   // Set login status
// //   Future<void> saveToken(String token) async {
// //     SharedPreferences prefsToken = await SharedPreferences.getInstance();
// //     await prefsToken.setString('token', token);
// //   }

// //   // Check if user is logged in
// //   Future<String?> getToken() async {
// //     SharedPreferences prefsToken = await SharedPreferences.getInstance();
// //     return prefsToken.getString('token');
// //   }
// // }

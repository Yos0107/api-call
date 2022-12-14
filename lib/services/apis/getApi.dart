import 'dart:convert';

import 'package:api_testing/models/usermodel.dart';
import 'package:dio/dio.dart';

Future<List<User>> GetUser() async {
  try {
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/users');
    if (response.statusCode == 200) {
      // print(response.data);
      List<User> body = response.data;
      List<User> user = body
          .map(
            (dynamic item) => User.fromJson(item),
          )
          .toList();
      // print(user);
      return user;
    } else {
      print("Data not found");
    }
  } catch (e) {
    print(e);
  }
}

import 'dart:ffi';

import 'package:api_testing/models/usermodel.dart';
import 'package:api_testing/services/provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

Future getUser() async {
  try {
    var response =
        await Dio().get('https://jsonplaceholder.typicode.com/users');
    print(response.statusCode);
    if (response.statusCode == 200) {
      final body = response.data;
      print(HamroModel.fromJson(response.data));
      List naya = body
        ..map(
          (dynamic item) => HamroModel.fromJson(item),
        ).toList();
      print(naya);
      return naya;
    } else {
      print("api not found");
    }
  } catch (e) {
    return e.toString();
  }
}

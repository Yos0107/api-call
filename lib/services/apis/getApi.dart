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
    // print(response.data);

    if (response.statusCode == 200) {
      List naya = response.data
          .map(
            (dynamic item) => HamroModel.fromJson(item),
          )
          .toList();

      return naya;
    } else {
      print("api not found");
    }
  } catch (e) {
    return e.toString();
  }
}

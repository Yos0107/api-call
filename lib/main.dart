import 'package:api_testing/screens/homepage.dart';
import 'package:api_testing/screens/login.dart';
import 'package:api_testing/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Hamroprovider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Homepage(),
        initialRoute: '/',
        routes: {
          "login": (context) => LoginPage(),
          "/home": (context) => Homepage()
        },
      ),
    );
  }
}

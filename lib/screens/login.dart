import 'package:api_testing/services/formvalidator.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  GlobalKey formKey = GlobalKey();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: usernameController,
                    validator: username(usernameController),
                    decoration: InputDecoration(
                      fillColor: Color(0xFFFFFFFC),
                      filled: true,
                      hintText: 'Username',
                      hintStyle:
                          TextStyle(fontSize: 18.0, color: Color(0xFF081C15)),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xFF14BDEB),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: password(passwordController),
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Color(0xFFFFFFFC),
                      filled: true,
                      hintText: 'Password',
                      hintStyle:
                          TextStyle(fontSize: 18.0, color: Color(0xFF081C15)),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xFF14BDEB),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    child: Text('Login',
                        style: TextStyle(fontSize: 20, letterSpacing: 1)),
                    onPressed: () {
                      passwordController.toString();
                    },
                    style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white,
                        primary: Color(0xFF16DB65),
                        minimumSize: Size(400, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  )
                ],
              ),
            )));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      //GET----------
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: LoginPage(),
      // home: SignUpPage(),
      // home: WelcomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 248, 248, 248),
        body: Center(
          child: Container(
            width: Get.width * 0.7,
            height: Get.width * 0.7,
            child: Image.asset("assets/logo/login.png"),
          ),
        ),
      ),
    );
  }
}
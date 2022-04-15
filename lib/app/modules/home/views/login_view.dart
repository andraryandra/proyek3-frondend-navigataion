import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/gestures.dart';
import '../../../routes/app_pages.dart';
import '../../login/controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          SizedBox(height: 25),
          Text(
            "E-Learning",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 66, 165),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "SMPN 1 Lohbener ",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.topCenter,
            height: 300,
            child: Image.asset(
              "assets/logo/login.png",
              fit: BoxFit.contain,
            ),
          ),
          
          SizedBox(height: 25),
          Text(
            "NIM",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          TextField(
          
            keyboardType: TextInputType.phone,
            autocorrect: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Contoh.2091920",
            ),
          ),
          SizedBox(height: 25),
          Text(
            "Password",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            autocorrect: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Contoh.2091920",
            ),
          ),
             SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOMEPAGE),
              child: Text(
                "MASUK",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 66, 165),
                fixedSize: Size(150, 50),
              ),
            ),
            
        ],
      ),
    );
  }
}

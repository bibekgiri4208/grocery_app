import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 1),
      body: Center(
        child: Column(
          children: [
            Icon(Icons.arrow_back, size: 30, color: Colors.green),
            Image.asset("assets/logo.png"),

            Text(
              "Sign In",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff82CD47),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

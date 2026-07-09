import 'package:flutter/material.dart';
import 'package:grocery_app/screens/auth/login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 35),
            Image.asset(
              "assets/onboard.png",
              fit: BoxFit.fitHeight,
              height: 550,
            ),

            SizedBox(height: 20),

            Text(
              "Grocery Shop",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            Text(
              "at your door",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            Text(
              "The easiest way to buy your \n grocery shopping",
              style: TextStyle(fontSize: 15, color: Colors.grey),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => LoginScreen()),
                );
              },
              child: Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff82CD47),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

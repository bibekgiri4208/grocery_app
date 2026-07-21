import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack screen", style: GoogleFonts.poppins(fontSize: 25)),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(height: 200, width: 200, color: Colors.red),

          Positioned(
            bottom: 20,
            right: 50,
            child: Container(height: 50, width: 50, color: Colors.blue),
          ),
          Positioned(
            left: 10,
            bottom: -30,
            child: Container(height: 50, width: 50, color: Colors.green),
          ),
        ],
      ),
    );
  }
}

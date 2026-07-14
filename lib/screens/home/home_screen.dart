import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Home"),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Image.asset("assets/menu_bar.png"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/avatar.png"),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello Bibek!", style: TextStyle(fontSize: 16)),
            Text("What are you looking for ?", style: TextStyle(fontSize: 16)),

            SizedBox(height: 10),

            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.withValues(alpha: 0.15),
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.menu),
                hintText: "Search keywords..",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(height: 10),

            Container(
              height: 180,
              decoration: BoxDecoration(
                color: Color(0xff86C649),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/offer.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Catagories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home/home_screen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    Center(child: Text("Two")),
    Center(child: Text("Three")),
    Center(child: Text("Four")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: "Notification",
          ),
        ],
      ),
    );
  }
}

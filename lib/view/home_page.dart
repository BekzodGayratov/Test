import 'package:appn3/view/screens/home_screen.dart';
import 'package:appn3/view/screens/profile_screen.dart';
import 'package:appn3/view/screens/search_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> _screens = [HomeScreen(), SearchScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hello")),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
        onTap: (v) {
          setState(() {
          _currentIndex = v;
          });
        },
      ),
    );
  }
}

List<Map<String, dynamic>> data = [
  {"name": "Abdulloh", "age": 16},
  {"name": "Ilyos", "age": 32},
  {"name": "Samandar", "age": 43},
  {"name": "Ali", "age": 22},
];

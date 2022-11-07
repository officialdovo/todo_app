import 'package:flutter/material.dart';
import 'package:todo_app/widgets/calender_widget.dart';
import 'package:todo_app/widgets/home_widget.dart';
import 'package:todo_app/widgets/profile_widget.dart';
import 'package:todo_app/widgets/settings_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  static const List _appBarTextList = [
    "Done Deal",
    "Calender",
    "Profile",
    "Settings"
  ];

  static const List _widgetList = [
    HomeWidget(),
    CalenderWidget(),
    ProfileWidget(),
    SettingsWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _appBarTextList[selectedIndex],
          style: const TextStyle(
              fontFamily: "Poppins", fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: _widgetList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_sharp), label: "Calender"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
      ),
    );
  }
}

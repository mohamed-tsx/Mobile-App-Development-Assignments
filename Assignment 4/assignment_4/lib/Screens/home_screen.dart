import 'package:assignment_4/Screens/bmi_home_screen.dart';
import 'package:assignment_4/Screens/calculator.dart';
import 'package:assignment_4/Screens/registration_page%20copy.dart';
import 'package:assignment_4/Screens/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  List AllPages = [
    Calculator(),
    BmiHomeScreen(),
    RegistrationPage(),
  ];
  int selectedIndex = 0;
  void onTapItem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: AllPages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.black,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inclusive_rounded),
            label: "Calculator",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.broken_image,
            ),
            label: "Bmi Calculator",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.app_registration,
            ),
            label: "Student Registration",
          ),
        ],
        onTap: onTapItem,
      ),
    );
  }
}

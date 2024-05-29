import 'package:assignment_4/Screens/calculator.dart';
import 'package:assignment_4/Screens/home_screen.dart';
import 'package:assignment_4/Screens/login_page.dart';
import 'package:assignment_4/Screens/registration_page.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.calculate),
            ),
            Tab(
              icon: Icon(Icons.app_registration),
            ),
            Tab(
              icon: Icon(Icons.login),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Calculator(),
            RegistrationPage(),
            LoginPage(),
          ],
        ),
      ),
    );
  }
}

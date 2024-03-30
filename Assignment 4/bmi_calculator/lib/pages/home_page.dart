import 'package:bmi_calculator/components/textFeild.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Body Mass Index',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              // TextFeild for the Height
              
              BmiTextFeild(
                controller: weightController,
                hintText: "Enter Weight In Kg",
              ),
              // TextFeild for the Weight
              // Calculate button
              // SHOW CASE THE BMI
            ],
          ),
        ),
      ),
    );
  }
}

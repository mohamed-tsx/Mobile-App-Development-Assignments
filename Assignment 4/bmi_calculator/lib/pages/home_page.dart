import 'package:bmi_calculator/components/calculate_button.dart';
import 'package:bmi_calculator/components/textFeild.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final weightFormKey = GlobalKey<FormState>();
  final heightFormKey = GlobalKey<FormState>();
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  String resultState = "";
  double result = 0;

  void calculateBmi() {
    if (weightController.text.isNotEmpty && heightController.text.isNotEmpty) {
      double weight = double.tryParse(weightController.text) ?? 0.0;
      double height = double.tryParse(heightController.text) ??
          0.0 / 100; // Convert height to meters
      if (height != 0) {
        setState(() {
          result = weight / (height * height);
          if (result < 18.5) {
            resultState = "UnderWeight";
          } else if (result > 18.5 && result < 24.9) {
            resultState = "Normal Weight";
          } else if (result > 25 && result < 29.9) {
            resultState = "OverWeight";
          } else {
            resultState = "Obese";
          }
        });
      }
    }
  }

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
        child: Column(
          children: [
            const SizedBox(
              height: 130,
            ),
            BmiTextFeild(
              controller: weightController,
              hintText: "Enter Weight In Kg",
              formKey: weightFormKey,
            ),
            const SizedBox(
              height: 20,
            ),
            BmiTextFeild(
              controller: heightController,
              hintText: "Enter Height In Cm",
              formKey: heightFormKey,
            ),
            const SizedBox(
              height: 20,
            ),
            CalculateButton(
              onTap: calculateBmi,
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              'BMI:',
              style: GoogleFonts.poppins(fontSize: 20),
            ),
            Text(
              '${result.toStringAsFixed(2)}',
              style: GoogleFonts.poppins(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$resultState',
              style: GoogleFonts.poppins(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

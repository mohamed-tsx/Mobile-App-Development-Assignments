import 'package:assignment_4/components/button.dart';
import 'package:assignment_4/components/textFeild.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiHomeScreen extends StatefulWidget {
  const BmiHomeScreen({super.key});

  @override
  State<BmiHomeScreen> createState() => _BmiHomeScreenState();
}

class _BmiHomeScreenState extends State<BmiHomeScreen> {
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
      resizeToAvoidBottomInset: true,
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              MyTextField(
                controller: weightController,
                hintText: "Enter Weight In Kg",
                formKey: weightFormKey,
                obsecureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: heightController,
                hintText: "Enter Height In Cm",
                formKey: heightFormKey,
                obsecureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              Button(
                text: "Calculate",
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
      ),
    );
  }
}

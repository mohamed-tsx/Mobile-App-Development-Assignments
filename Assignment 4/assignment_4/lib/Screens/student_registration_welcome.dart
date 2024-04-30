import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentRegistrationWelcome extends StatelessWidget {
  final String id;
  final String fullName;
  final String className;
  final String faculty;
  final String gender;

  const StudentRegistrationWelcome({
    super.key,
    required this.className,
    required this.id,
    required this.faculty,
    required this.gender,
    required this.fullName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Student Information",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.grey[200], // Background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: Text(
                "Student Full Name is: $fullName",
                style: GoogleFonts.poppins(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.grey[200], // Background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: Text(
                "Student Faculty is: $faculty",
                style: GoogleFonts.poppins(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.grey[200], // Background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: Text(
                style: GoogleFonts.poppins(),
                "Student Id is: $id",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.grey[200], // Background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: Text(
                "Student Gender is: $gender",
                style: GoogleFonts.poppins(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.grey[200], // Background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: Text(
                "Student Class is: $className",
                style: GoogleFonts.poppins(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: const SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),

            // Create account Text
            Text(
              "Create Account",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Username TextFeild

            // Email TextFeild

            // Password TextFeild

            // Confirm Password TextFeild

            // Or Register using social media platforms

            // Google

            // Facebook

            // Already have an account? Login
          ],
        ),
      )),
    );
  }
}

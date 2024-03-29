import 'package:flutter/material.dart';
import 'package:sign_up_form/components/sign_up_button.dart';
import 'package:sign_up_form/components/textfield.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final confirmPasswordConroller = TextEditingController();

  void SignUserUp() => {print("Hello World")};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),

            // Create account Text
            const Text(
              "Create Account",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 100,
            ),
            // Username TextFeild
            SignUpTextFeild(
              controller: usernameController,
              hintText: "Username",
              obsecureText: false,
            ),

            const SizedBox(
              height: 10,
            ),

            // Email TextFeild
            SignUpTextFeild(
              controller: emailController,
              hintText: "email@example.com",
              obsecureText: false,
            ),

            const SizedBox(
              height: 10,
            ),

            // Password TextFeild
            SignUpTextFeild(
              controller: passwordController,
              hintText: "password",
              obsecureText: true,
            ),

            const SizedBox(
              height: 10,
            ),

            // Confirm Password TextFeild
            SignUpTextFeild(
              controller: confirmPasswordConroller,
              hintText: "confirm password",
              obsecureText: true,
            ),

            const SizedBox(
              height: 20,
            ),

            // Create account button
            SignInButton(
              onTap: SignUserUp,
            ),

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

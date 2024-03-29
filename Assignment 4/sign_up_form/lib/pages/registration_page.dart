import 'package:flutter/material.dart';
import 'package:sign_up_form/components/sign_up_button.dart';
import 'package:sign_up_form/components/social_sign_up.dart';
import 'package:sign_up_form/components/textfield.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final confirmPasswordConroller = TextEditingController();

  void signUserUp() => {print("Hello World")};

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
              onTap: signUserUp,
            ),

            const SizedBox(
              height: 15,
            ),
            // Or Register using social media platforms
            const Text(
              "Or Register using social platforms",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 15,
            ),
            // Google
            SocialSignUp(
              onTap: signUserUp,
              ImagePath: "Images/google.png",
              Social: "Google",
            ),

            const SizedBox(
              height: 15,
            ),
            // Facebook
            SocialSignUp(
              onTap: signUserUp,
              ImagePath: "Images/apple.png",
              Social: "Apple",
            ),
            const SizedBox(
              height: 60,
            ),

            // Already have an account? Login
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(width: 4),
                const Text(
                  'Logins',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}

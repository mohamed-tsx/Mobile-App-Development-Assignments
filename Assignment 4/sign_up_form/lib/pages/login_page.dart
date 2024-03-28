import "package:flutter/material.dart";
import "package:sign_up_form/components/textField.dart";

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // Logo
              const SizedBox(height: 50),
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 50),
              // Welcome back, you've been missed
              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // username textField
              textField(
                controller: usernameController,
                hintText: "Username",
                obscureText: false,
              ),

              SizedBox(height: 10),

              // password textField
              textField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),

              // Sign in Button

              // Or Continue with

              // gooogle + apple sign in button

              // not a member? register now
            ],
          ),
        ),
      ),
    );
  }
}

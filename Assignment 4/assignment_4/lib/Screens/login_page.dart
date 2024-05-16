import "package:assignment_4/Screens/registration_page.dart";
import "package:assignment_4/Screens/sign_in_welcome_screen.dart";
import "package:assignment_4/components/button.dart";
import "package:assignment_4/components/square_tile.dart";
import "package:assignment_4/components/textFeild.dart";
import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  final String? usernname;
  final String? password;
  LoginPage({
    super.key,
    this.usernname,
    this.password,
  });
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameFormkey = GlobalKey<FormState>();
  final passwordFormkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              MyTextField(
                controller: usernameController,
                hintText: "Username",
                formKey: usernameFormkey,
                obsecureText: false,
              ),

              const SizedBox(height: 10),

              // password textField
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                formKey: passwordFormkey,
                obsecureText: true,
              ),

              const SizedBox(height: 10),
              // Forgot Password Text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Sign in Button
              Button(
                text: "Log In",
                onTap: () {
                  if (usernameController.text == usernname &&
                      passwordController.text == password) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Successfully Logged in"),
                      ),
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Welcome(
                          username: usernameController.text,
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Invalid Credentials"),
                      ),
                    );
                  }
                },
              ),

              const SizedBox(height: 50),

              // Or Continue with
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[600],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Or Continue with"),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[600],
                    ),
                  )
                ],
              ),

              const SizedBox(
                height: 50,
              ),

              // gooogle + apple sign in button
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: "images/google.png"),
                  SizedBox(
                    width: 25,
                  ),
                  SquareTile(imagePath: "images/apple.png"),
                ],
              ),
              const SizedBox(
                height: 50,
              ),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationPage()),
                      );
                    },
                    child: const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

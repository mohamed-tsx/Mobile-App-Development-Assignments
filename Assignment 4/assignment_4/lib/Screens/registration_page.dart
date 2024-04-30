import "package:assignment_4/Screens/login_page.dart";
import "package:assignment_4/components/button.dart";
import "package:assignment_4/components/square_tile.dart";
import "package:assignment_4/components/textFeild.dart";
import "package:flutter/material.dart";

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final usernameFormkey = GlobalKey<FormState>();
  final passwordFormkey = GlobalKey<FormState>();
  final emailFormkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                // Logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(height: 30),
                // Welcome back, you've been missed
                Text(
                  'Welcome, Create your account!',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                MyTextField(
                  controller: emailController,
                  hintText: "example@example.com",
                  formKey: emailFormkey,
                  obsecureText: false,
                ),

                const SizedBox(height: 10),

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
                  text: "Register In",
                  onTap: () {
                    if (usernameController.text.isNotEmpty &&
                        emailController.text.isNotEmpty &&
                        passwordController.text.isNotEmpty) {
                      String username = usernameController.text;
                      String password = passwordController.text;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(
                            usernname: username,
                            password: password,
                          ),
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

                SizedBox(
                  height: 50,
                ),

                // gooogle + apple sign in button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
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
                      'Already have an account?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Login now',
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
      ),
    );
  }
}

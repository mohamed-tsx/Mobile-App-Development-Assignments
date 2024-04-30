import "package:assignment_4/Screens/login_page.dart";
import "package:assignment_4/Screens/student_registration_welcome.dart";
import "package:assignment_4/components/button.dart";
import "package:assignment_4/components/square_tile.dart";
import "package:assignment_4/components/textFeild.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class StudentRegistrationPage extends StatefulWidget {
  StudentRegistrationPage({super.key});

  @override
  State<StudentRegistrationPage> createState() =>
      _StudentRegistrationPageState();
}

class _StudentRegistrationPageState extends State<StudentRegistrationPage> {
  final fullNameController = TextEditingController();

  final idController = TextEditingController();

  final classController = TextEditingController();

  final fullNameFormkey = GlobalKey<FormState>();

  final idFormkey = GlobalKey<FormState>();

  final classFormkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String selectedOption = "FOC";
    String selectedGender = "";
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                // Logo

                const SizedBox(height: 80),
                // Welcome back, you've been missed
                Text(
                  'Register Students !',
                  style: GoogleFonts.poppins(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                MyTextField(
                  controller: idController,
                  hintText: "ID",
                  formKey: idFormkey,
                  obsecureText: false,
                ),

                const SizedBox(height: 10),

                // username textField
                MyTextField(
                  controller: fullNameController,
                  hintText: "Full Name",
                  formKey: fullNameFormkey,
                  obsecureText: false,
                ),

                const SizedBox(height: 10),

                // password textField
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: DropdownButtonFormField<String>(
                    value: selectedOption,
                    onChanged: (newValue) {
                      setState(() {
                        selectedOption = newValue!;
                      });
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      fillColor: Colors.grey[100],
                      filled: true,
                      hintStyle: GoogleFonts.poppins(color: Colors.grey[500]),
                      hintText: "Faculty",
                    ),
                    items: [
                      DropdownMenuItem(
                        value: "FOC",
                        child: Text("FOC"),
                      ),
                      DropdownMenuItem(
                        value: "FMS",
                        child: Text("FMS"),
                      ),
                      DropdownMenuItem(
                        value: "FESSA",
                        child: Text("FESSA"),
                      ),
                      DropdownMenuItem(
                        value: "FASS",
                        child: Text("FASS"),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                // password textField
                MyTextField(
                  controller: classController,
                  hintText: "Class",
                  formKey: classFormkey,
                  obsecureText: false,
                ),

                const SizedBox(
                  height: 20,
                ),

                // Radio buttons for selecting gender
                const Text(
                  "Select Gender",
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Radio<String>(
                        value: "Male",
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(
                            () {
                              selectedGender = value!;
                            },
                          );
                          print(selectedGender);
                        },
                      ),
                      const Text("Male"),
                      Radio<String>(
                        value: "Female",
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value!;
                          });
                          print(selectedGender);
                        },
                      ),
                      const Text("Female"),
                      // You can add more radio buttons for other gender options if needed
                    ],
                  ),
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
                  text: "Register Student",
                  onTap: () {
                    if (idController.text.isNotEmpty &&
                        fullNameController.text.isNotEmpty &&
                        classController.text.isNotEmpty) {
                      String className = classController.text;
                      String id = idController.text;
                      String fullName = fullNameController.text;

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StudentRegistrationWelcome(
                            id: id,
                            className: className,
                            fullName: fullName,
                            faculty: selectedOption!,
                            gender: selectedGender,
                          ),
                        ),
                      );
                    }
                  },
                ),

                const SizedBox(height: 50),

                // Or Continue with
              ],
            ),
          ),
        ),
      ),
    );
  }
}

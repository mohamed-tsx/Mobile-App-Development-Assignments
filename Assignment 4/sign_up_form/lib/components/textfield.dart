import 'package:flutter/material.dart';

class SignUpTextFeild extends StatelessWidget {
  final controller;
  final obsecureText;
  final String hintText;
  const SignUpTextFeild(
      {super.key,
      required this.controller,
      required this.obsecureText,
      required this.hintText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 3,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: Colors.grey[100],
          filled: true,
          hintText: hintText,
          hintStyle:
              TextStyle(color: Colors.grey[500], fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}

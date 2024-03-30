import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiTextFeild extends StatelessWidget {
  final controller;
  final String hintText;
  final formKey;
  const BmiTextFeild({
    super.key,
    required this.controller,
    required this.hintText,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        key: formKey,
        keyboardType: TextInputType.number,
        controller: controller,
        validator: (value) {
          if (value!.isEmpty) {
            return "Enter Value";
          }
          return null;
        },
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 3,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          fillColor: Colors.grey[100],
          filled: true,
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(color: Colors.grey[500]),
        ),
      ),
    );
  }
}

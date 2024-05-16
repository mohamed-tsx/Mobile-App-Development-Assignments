import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;
  const CalcButton({
    super.key,
    this.color,
    this.textColor,
    required this.buttonText,
    this.buttonTapped,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: GoogleFonts.poppins(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 19,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

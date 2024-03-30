import 'package:flutter/material.dart';

class SocialSignUp extends StatelessWidget {
  final Function()? onTap;
  final ImagePath;
  final String Social;
  const SocialSignUp(
      {super.key,
      required this.onTap,
      required this.ImagePath,
      required this.Social});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: Colors.grey, // Border color
            width: 1, // Border width
          ),
        ),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                ImagePath,
                width: 25,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "Sign In With $Social",
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

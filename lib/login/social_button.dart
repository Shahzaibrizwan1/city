import 'package:flutter/material.dart';
import 'package:uidesigns/login/color.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  const SocialButton({super.key, required this.label, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {},
        icon: Image.asset(
          iconPath,
          width: 30,
        ),
        label: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / 32,
                horizontal: MediaQuery.of(context).size.width / 4),
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Colors.white12,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(10),
            )));
  }
}

import 'package:flutter/material.dart';
import 'package:uidesigns/login/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
      child: Column(
        children: [
          Image.asset('assets/download.png'),
          Text(
            "Sign",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 18,
          ),
          SocialButton(
            iconPath: "assets/mas.png",
            label: 'Shahzaib',
          )
         
        ],
        
      ),
    )));
  }
}

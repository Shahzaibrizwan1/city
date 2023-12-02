import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  //final String labelText;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  const TextFields(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.keyboardType,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 250,
      child: TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          // controller: namecontroller,
          // validator: (value) {
          //   if (value!.isEmpty) {
          //     return 'Please enter your Name';
          //   }
          // },
          style: const TextStyle(
            color: Colors.green,
            //fontSize: 2
          ),
          decoration: InputDecoration(
            // contentPadding:
            //     EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            hintText: hintText,
            hintStyle: TextStyle(color: Color(0xff8D8D8D)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.pink),
            ),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange),
            ),
          )),
    );
  }
}

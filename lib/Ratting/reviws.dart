import 'package:flutter/material.dart';
import 'package:uidesigns/app_scree.dart';
import 'package:uidesigns/main.dart';

class Ratting extends StatefulWidget {
  const Ratting({super.key});

  @override
  State<Ratting> createState() => _RattingState();
}

class _RattingState extends State<Ratting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appget("Rattings", Icons.arrow_back),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/download.png"),
            ),
            title: Row(
              children: [
                Text(
                  "Shahzaib",
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.image,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          TextFormField(
            maxLines: 1,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(28),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: "Shahzaib",
            ),
          )
        ],
      ),
    );
  }
}

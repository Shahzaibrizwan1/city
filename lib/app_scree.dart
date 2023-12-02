// import 'dart:js';

import 'package:flutter/material.dart';

appget(text, IconData) {
  return AppBar(
    centerTitle: true,
    title: Text(text),
    backgroundColor: Colors.white12,
    leading: IconButton(
        onPressed: () {
           // Navigator.of(context as BuildContext).pop();
        },
        icon: Icon(IconData)),
        
  );
  
}

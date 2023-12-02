import 'package:flutter/material.dart';
import 'package:uidesigns/Ratting/reviws.dart';
import 'package:uidesigns/Textformfield/Textformfied.dart';
import 'package:uidesigns/button/button_type.dart';
import 'package:uidesigns/call_screen.dart';
import 'package:uidesigns/card_details.dart';
import 'package:uidesigns/home_page.dart';
import 'package:uidesigns/list.dart';
import 'package:uidesigns/login/login_screen.dart';
import 'package:uidesigns/media_query.dart';
import 'package:uidesigns/payment_proceed.dart';
import 'package:uidesigns/raiting.dart';
import 'package:uidesigns/taxforms.dart';

// // import 'package:uidesigns/textforms_details.dart';
// var size, height, weight;
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     var mq = MediaQuery.of(context);
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(scaffoldBackgroundColor: Colors.black),
//       home:  CardDetails(),
//     );
//   }
// }

//               // child: ListTile(
//   tileColor: Colors.transparent,
//   leading: Image.asset(
//       "assets/download.png"), // Icon on the left side
//   title: Text('Title of the Tile'),
//   subtitle: Text('Subtitle of the Tile'),
//   onTap: () {
//     // Handle onTap action if needed
//   },
//   // You can also use trailing to add widgets on the right side
//   trailing: Icon(Icons.arrow_forward),
// ),
//                     ),
//               );
//             }),
//       ),

//       //]
//       //),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:uidesigns/textforms_details.dart';

void main() {
  runApp(MyApp());
}

late Size mq;

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Dummy data list
  // final TextEditingController _textEditingController = TextEditingController();

  // final TextEditingController _passwordController = TextEditingController();

  // final TextEditingController _lastnameController = TextEditingController();

  // bool checkvalue = false;
  // bool checkvalue1 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: FAQPage(),
      // Scaffold(
      //   appBar: AppBar(
      //     title: Text('ListView.builder Example'),
      //   ),
      //   body: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         ListView.builder(
      //           shrinkWrap: true,
      //           itemCount: Items.itemList.length,
      //           itemBuilder: (BuildContext context, int index) {
      //             return ListTile(
      //               title: Text(Items.itemList[index]['title']),
      //               subtitle: Text(Items.itemList[index]['subtitle']),
      //               leading: Icon(Items.itemList[index]['icon']),
      //               trailing: Icon(Items.itemList[index]['trailing']),
      //               onTap: () {
      //                 // Add action when the ListTile is tapped
      //                 // print('Tapped on');
      //               },
      //             );
      //           },
      //         ),
      //         TextFields(
      //           //labelText: 'Enter your text',
      //           hintText: "Name",
      //           controller: _textEditingController,
      //           keyboardType: TextInputType.text,
      //           obscureText: false,
      //         ),
      //         SizedBox(
      //           height: 10,
      //         ),
      //         TextFields(
      //           //labelText: 'Enter your text',
      //           hintText: "Name",
      //           controller: _passwordController,
      //           keyboardType: TextInputType.text,
      //           obscureText: false,
      //         ),
      //         SizedBox(
      //           height: 10,
      //         ),
      //         TextFields(
      //           //labelText: 'Enter your text',
      //           hintText: "Name",
      //           controller: _lastnameController,
      //           keyboardType: TextInputType.text,
      //           obscureText: false,
      //         ),
      //         Checkbox(
      //             value: checkvalue,
      //             onChanged: (value) {
      //               setState(() {
      //                 checkvalue = value!;
      //               });
      //             }),
      //         Checkbox(
      //             value: checkvalue1,

      //             // tristate: true,
      //             onChanged: (value) {
      //               setState(() {
      //                 checkvalue1 = value!;
      //               });
      //             }),
      //         SizedBox(
      //           height: 20,
      //         ),

      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

// // class MyApp extends StatelessWidget {
// //   //var size, height, width;

// //   @override
// //   Widget build(BuildContext context) {
// //     // getting the size of the window
// //     // size = MediaQuery.of(context).size;
// //     // height = size.height;
// //     // width = size.width;
// //     var _mediaQuery = MediaQuery.of(context);
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text("Geeks For Geeks"),
// //           backgroundColor: Colors.green,
// //         ),
// //         body: SingleChildScrollView(
// //           child: Container(
// //             color: Colors.yellow,
// //             height: _mediaQuery.size.height * 0.5,
// //             width: _mediaQuery.size.width * 0.3, //half of the height size
// //             //width: width * 0.1, //half of the width size
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

import 'package:flutter/material.dart';
import 'package:uidesigns/call_screen.dart';
import 'package:uidesigns/textforms_details.dart';

class Callback extends StatefulWidget {
  const Callback({super.key});

  @override
  State<Callback> createState() => _CallbackState();
}

class _CallbackState extends State<Callback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand, // Makes the Stack fill the entire screen
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/back.jpg'), // Replace with your image asset
                fit: BoxFit.cover, // Cover the entire screen
              ),
            ),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 450),
                child: Text(
                  '00:00',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Colors.black87),
              height: 60.0,
              width: 360,
              //padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white12, // Change the background color here
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.volume_up,
                        size: 22,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CallScreen()));
                        // Speaker functionality
                      },
                    ),
                  ),

                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white12, // Change the background color here
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.videocam,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: () {
                        // Video functionality
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  // SizedBox(width: 40.0), // Empty space for the center of the row
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white12, // Change the background color here
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Microphone functionality
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white12, // Change the background color here
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.call_end,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => TextFormDetails())));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 100,
            right: 30,
            //bottom: ,
            child: Container(
              height: 170,
              width: 130,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0),
                borderRadius: BorderRadius.circular(2.0),
                image: const DecorationImage(
                  image: AssetImage('assets/back.jpg'),
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

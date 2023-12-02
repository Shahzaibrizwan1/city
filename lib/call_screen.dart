import 'package:flutter/material.dart';
import 'package:uidesigns/call_back.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white12,
        bottomNavigationBar: BottomAppBar(
          //color: Colors.transparent,
          color: Colors.white12,
          shape: const CircularNotchedRectangle(),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            ),
            height: 60.0,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.volume_up,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Callback()));
                    // Speaker functionality
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.videocam,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    
                  },
                ),
                
                IconButton(
                  icon: const Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Microphone functionality
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.call,
                    color: Colors.red,
                  ),
                  onPressed: () {
                 
                  },
                ),
              ],
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                // height: 120,
                // width: 130,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage('assets/back.jpg'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //Image.asset('assets/back.jpg'),
                      Text(
                        "Amanda",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "00:11",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            )
            
          ],
        ));


  }
}

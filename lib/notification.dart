import 'package:flutter/material.dart';
import 'package:uidesigns/app_scree.dart';
import 'package:uidesigns/main.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final List<Map<String, dynamic>> ItemList = [
    {
      'title': 'title',
      'image': 'assets/mas.png',
      'subtitle': 'how are you',
      'icon': Icons.home,
    },
    {
      'title': 'Shahzaib',
      'image': 'assets/download.png',
      'subtitle': '32 messages',
      'icon': Icons.add,
    },
    {
      'title': 'title',
      'image': 'assets/coins.png',
      'subtitle': '29 Notification',
      'icon': Icons.watch,
    },
    {
      'title': 'title',
      'image': 'assets/mas.png',
      'subtitle': 'messages',
      'icon': Icons.search,
    },
    {
      'title': 'title',
      'image': 'assets/mas.png',
      'subtitle': 'messages',
      'icon': Icons.search,
    },
    {
      'title': 'title',
      'image': 'assets/mas.png',
      'subtitle': 'messages',
      'icon': Icons.search,
    },
    {
      'title': 'title',
      'image': 'assets/mas.png',
      'subtitle': 'messages',
      'icon': Icons.search,
    },
    {
      'title': 'title',
      'image': 'assets/mas.png',
      'subtitle': 'messages',
      'icon': Icons.search,
    },
  ];
  int filledStars = 0;
  bool iconfield = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Notification"),
          backgroundColor: Colors.white12,
          leading: IconButton(
              onPressed: () {
                // Navigator.of(context as BuildContext).pop();
              },
              icon: Icon(Icons.arrow_back)),
          actions: const [
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 20),
              child: Text(
                "Clear All",
                style: TextStyle(color: Colors.pink),
              ),
            )
          ],
        ),
        body: Column(children: [
          Container(
            height: mq.height / 2,
            decoration: BoxDecoration(color: Colors.white12),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: ItemList.length,
                // * 2 - 1,
                itemBuilder: (BuildContext context, int index) {
                  // if (index.isOdd) {
                  //   return Divider(
                  //     color: Colors.white,
                  //   ); // Add a Divider for odd indices
                  // }
                  // //int itemIndex = index ~/ 2;
                  return ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                            //ItemList[index]['title'],
                            ItemList[index]['image'])),
                    title: Text(
                      ItemList[index]['title'],
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      ItemList[index]['subtitle'],
                      //"view Your Profile",
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Icon(
                      ItemList[index]['icon'],
                      //Icons.add,
                      color: Colors.white,
                    ),

                    // Text(
                    //   ItemList[index]['title'],
                    //   style: TextStyle(color: Colors.pink),
                    // ),
                  );
                }),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (index) {
                return IconButton(
                  icon: Icon(
                    index < filledStars ? Icons.star : Icons.star_border,
                    color: Colors.amber,
                  ),
                  onPressed: () {
                    setState(() {
                      filledStars = index + 1;
                    });
                  },
                );
              },
            ),
          ),
        ])

        // ListView(
        //   children: [
        //     ListTile(
        //         onTap: () {},
        //         leading: CircleAvatar(
        //             backgroundImage: AssetImage("assets/back.jpg")),
        //         title: Text(
        //           "Best Offer for You!",
        //           style: TextStyle(color: Colors.white),
        //         ),
        //         subtitle: Row(
        //           children: [
        //             Text(
        //               "Lorem Ipsum is simply ",
        //               style: TextStyle(color: Colors.grey),
        //             ),
        //             Text(
        //               "view more",
        //               style: TextStyle(color: Colors.pink),
        //             )
        //           ],
        //         )
        //         // Text(
        //         //   "Lorem Ipsum is simply view more..",
        //         //   style: TextStyle(color: Colors.grey),
        //         // ),
        //         ),
        //     ListTile(
        //       onTap: () {},
        //       leading:
        //           CircleAvatar(backgroundImage: AssetImage("assets/coins.png")),
        //       title: Text(
        //         "Best Offer for You!",
        //         style: TextStyle(color: Colors.white),
        //       ),
        //       subtitle: Text(
        //         "view Your Profile",
        //         style: TextStyle(color: Colors.grey),
        //       ),
        //       trailing: Text(
        //         "New",
        //         style: TextStyle(color: Colors.pink),
        //       ),
        //     ),
        //     ListTile(
        //       onTap: () {},
        //       leading: CircleAvatar(
        //           backgroundImage: AssetImage("assets/download.png")),
        //       title: Text(
        //         "Best Offer for You!",
        //         style: TextStyle(color: Colors.white),
        //       ),
        //       subtitle: Text(
        //         "MissCall",
        //         style: TextStyle(color: Colors.grey),
        //       ),
        //       trailing: Text(
        //         "26/4",
        //         style: TextStyle(color: Colors.grey),
        //       ),
        //     ),
        //     ListTile(
        //       onTap: () {},
        //       leading:
        //           CircleAvatar(backgroundImage: AssetImage("assets/back.jpg")),
        //       title: Text(
        //         "Best Offer for You!",
        //         style: TextStyle(color: Colors.white),
        //       ),
        //       subtitle: Text(
        //         "Messages 32",
        //         style: TextStyle(color: Colors.grey),
        //       ),
        //       trailing: Text(
        //         "30/2",
        //         style: TextStyle(color: Colors.grey),
        //       ),
        //     ),
        //   ],
        //)
        );
  }
}

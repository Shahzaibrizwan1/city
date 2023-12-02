import 'package:flutter/material.dart';
import 'package:uidesigns/app_scree.dart';
import 'package:uidesigns/color.dart';
import 'package:uidesigns/main.dart';
import 'package:uidesigns/notification.dart';

class MediaQuerys extends StatefulWidget {
  const MediaQuerys({Key? key}) : super(key: key);

  @override
  State<MediaQuerys> createState() => _MediaQuerysState();
}

class _MediaQuerysState extends State<MediaQuerys> {
  late List<bool?> isselecteds;
  List<String> checkboxTexts = [
    'You do not have a 2022 tax document available s for one or more of the following reasons',
    'Checkbox 2 how to manage the Responvie design in flutter bgbgbgb ',
    'You do not have a 2022 tax document available for one or more of the following reasons',
  ];

  @override
  void initState() {
    super.initState();
    // Initialize the list of checkboxes with false values
    isselecteds = List.generate(checkboxTexts.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: appget("Responsive Design", Icons.search),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: mq.height / 2,
              width: mq.width / 1,
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: mq.height / 40,
                  ),
                  const Text(
                    "2022",
                    style: TextStyle(color: whiteColor, fontSize: 20),
                  ),
                  SizedBox(
                    height: mq.height / 40,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "You do not have a 2022 tax document available for one or more of the following reasons",
                      style: TextStyle(color: whiteColor, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: mq.height / 800,
                  ),
                  for (var i = 0; i < checkboxTexts.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: mq.height / 12,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 19),
                                child: Checkbox(
                                  fillColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.disabled)) {
                                        return Colors.orange.withOpacity(.32);
                                      }
                                      return AppColors.pinkColor;
                                    },
                                  ),
                                  value: isselecteds[i],
                                  onChanged: (value) {
                                    setState(() {
                                      // Update the state of the clicked checkbox only
                                      isselecteds[i] = value;
                                    });
                                  },
                                  visualDensity: const VisualDensity(
                                    horizontal: VisualDensity.minimumDensity,
                                    vertical: VisualDensity.minimumDensity,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: mq.width / 80,
                              ),
                              Flexible(
                                child: Text(
                                  checkboxTexts[i],
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: mq.height / 20,
          ),
          ElevatedButton.icon(
            style:
                ElevatedButton.styleFrom(backgroundColor: AppColors.pinkColor),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Notifications())));
            },
            label: Text("Go to Notification"),
            icon: Icon(Icons.notification_add),
          )
        ],
      ),
    );
  }
}

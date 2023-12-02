import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:uidesigns/app_scree.dart';

import 'package:uidesigns/payment_proceed.dart';
import 'package:uidesigns/pricee/price_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //double price = 1.29;

//  void increasePrice() {
//     setState(() {

//       price +=
//           1.29;
//     });
//   }
  final priceLogic = PriceLogic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appget("payment", Icons.abc),
      // AppBar(
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back), 
      //     onPressed: () {
      //       Navigator.of(context).pop();
      //     },
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.white12,
      //   title: Text('Payment Method'),
    //  ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 140,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white12),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  icon: Image.asset(
                                    "assets/coins.png",
                                    width: 20, // Set the width of the image
                                    height: 20,
                                  ),
                                  onPressed: () {}),
                              const SizedBox(
                                width: 1,
                              ),
                              const Text(
                                "100 token",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    priceLogic.increasePrice();
                                    setState(() {});
                                    // print(price);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.pinkAccent,
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(Icons.add),
                                      SizedBox(width: 5),
                                      Text('Apply Coupon'),
                                    ],
                                  ))
                            ],
                          ),
                          const Divider(
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Total Price",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                Text(
                                  '\$${priceLogic.price.toString()}',
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                // elevation: 5, // Shadow depth
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0), // Rounded corners
                ),
                color: Colors.white12, // Background color
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Container(
                        height: 57,
                        width: 280,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color:
                                  Colors.white12, // Set the border color here
                              width: 2.0, // Set the border width
                            ),
                            color: Colors.white12),
                        child: const Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.apple,
                                size: 30,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Apple Pay",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 137,
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 57,
                        width: 280,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color:
                                  Colors.white12, // Set the border color here
                              width: 2.0, // Set the border width
                            ),
                            color: Colors.white12),
                        child: Padding(
                          padding: const EdgeInsets.all(7),
                          child: Row(
                            children: [
                              Image.asset("assets/download.png"),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Visa",
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                width: 163,
                              ),
                              const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 57,
                        width: 280,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color:
                                  Colors.white12, // Set the border color here
                              width: 2.0, // Set the border width
                            ),
                            color: Colors.white12),
                        child: Padding(
                          padding: const EdgeInsets.all(7),
                          child: Row(
                            children: [
                              Image.asset('assets/mas.png'),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Master Card",
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                width: 114,
                              ),
                              const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 57,
                        width: 280,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color:
                                  Colors.white12, // Set the border color here
                              width: 2.0, // Set the border width
                            ),
                            color: Colors.white12),
                        child: const Padding(
                          padding: EdgeInsets.all(7),
                          child: Row(
                            children: [
                              Icon(
                                Icons.payment,
                                size: 30,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Local Debit",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 130,
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: DottedBorder(
                          // padding: EdgeInsets.all(2),
                          dashPattern: [6, 6, 6, 6],
                          color: Colors.pinkAccent,
                          strokeWidth: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            child: Container(
                              height: 40,
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Colors.pinkAccent,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Add Debit/Credit Card",
                                    style: TextStyle(color: Colors.pinkAccent),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            //minimumSize: Size(20, 35),
                            fixedSize: Size(280, 50),
                            backgroundColor: Colors.pinkAccent,
                          ),
                          onPressed: () {
                            // Provider.of<PriceModel>(context, listen: false).increasePrice();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        PaymentProceed(updatedPrice: price))));
                          },
                          child: const Text(
                            "Proceed to payment",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

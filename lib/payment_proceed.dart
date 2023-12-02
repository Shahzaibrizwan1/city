import 'package:flutter/material.dart';
import 'package:uidesigns/pricee/price_class.dart';

class PaymentProceed extends StatefulWidget {
  final double updatedPrice;
  const PaymentProceed({super.key, required this.updatedPrice});

  @override
  State<PaymentProceed> createState() => _PaymentProceedState();
}

double? displayedPrice;
double price = 1.29;

class _PaymentProceedState extends State<PaymentProceed> {
  @override
  void initState() {
    super.initState();
    displayedPrice = widget.updatedPrice;
  }

  // void increasePrice() {
  //   setState(() {
  //     price += 1.29;
  //   });
  // }
  // final priceLogic = PriceLogic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Payment"),
          backgroundColor: Colors.white12,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, bottom: 2, top: 10),
              child: Container(
                  padding: EdgeInsets.all(10),
                  height: 110,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white12),
                  child: const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Current Balance",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.pinkAccent,
                              ),
                              Text(
                                "Add",
                                style: TextStyle(
                                  color: Colors.pinkAccent,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 260),
                        child: Text(
                          "373",
                          style: TextStyle(
                              color: Colors.pinkAccent,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 15, left: 15),
              child: Container(
                height: 300,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white12),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                            alignment: Alignment.topLeft,
                            child: const Text(
                              "By token",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(100, 30),
                              backgroundColor: Colors.pinkAccent),
                          onPressed: () {},
                          child:
                              Text('\$${priceLogic.price.toStringAsFixed(2)}')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(100, 30),
                              backgroundColor: Colors.pinkAccent),
                          onPressed: () {},
                          child:
                              Text('\$${priceLogic.price.toStringAsFixed(2)}')
                          //Text("\$${price.toStringAsFixed(1)}")
                          ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(100, 30),
                              backgroundColor: Colors.pinkAccent),
                          onPressed: () {},
                          child:
                              // Text("\$${displayedPrice!.toStringAsFixed(1)}")
                              Text('\$${priceLogic.price.toStringAsFixed(2)}')),
                      TextButton(
                          onPressed: () {
                            // Call increasePrice() from the imported file

                            priceLogic.increasePrice();
                            setState(() {});
                            print(price);

                            // Text("\$${displayedPrice!.toStringAsFixed(1)}");
                          },
                          child: const Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.pinkAccent,
                              ),
                              Text(
                                "Apply Coupon",
                                style: TextStyle(color: Colors.pinkAccent),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

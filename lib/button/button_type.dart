import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  // FAQ data - Questions and Answers
  final List<FAQItem> faqItems = [
    FAQItem(
      question: 'What is Flutter?',
      answer: 'Flutter is a UI toolkit for building natively '
          'compiled applications for mobile, web, and desktop from a '
          'single codebase.',
    ),
    FAQItem(
      question: 'Is Flutter free to use?',
      answer: 'Yes, Flutter is an open-source framework '
          'released by Google and is free to use.',
    ),
    FAQItem(
      question: 'Can Flutter be used for both iOS and Android?',
      answer: 'Yes, Flutter can be used to develop applications for '
          'both iOS and Android platforms, as well as web and desktop.',
    )
    // Add more FAQ items here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ'),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Text(
              faqItems[index].question,
            ),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  faqItems[index].answer,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});
}

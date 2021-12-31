import 'package:destini/destini_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Destini());
}

class Destini extends StatelessWidget {
  const Destini({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          // constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.all(20.0),
          child: const SafeArea(
            child: DestiniPage(),
          ),
        ),
      ),
    );
  }
}

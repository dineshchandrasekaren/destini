import 'package:destini/destini_brain.dart';
import 'package:flutter/material.dart';

class DestiniPage extends StatefulWidget {
  const DestiniPage({Key? key}) : super(key: key);

  @override
  _DestiniPageState createState() => _DestiniPageState();
}

class _DestiniPageState extends State<DestiniPage> {
  DestiniBrain destiniBrain = DestiniBrain();
  void sendChoice(int choice) {
    setState(() {
      destiniBrain.nextStory(choice);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 12,
          child: Center(
            child: Text(
              destiniBrain.getStoryTitle(),
              style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () => {sendChoice(1)},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
              child: Text(
                destiniBrain.getChoice1(),
                style: const TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Visibility(
              visible: destiniBrain.buttonShouldBeVisible(),
              child: TextButton(
                onPressed: () => {sendChoice(2)},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
                child: Text(
                  destiniBrain.getChoice2(),
                  style: const TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

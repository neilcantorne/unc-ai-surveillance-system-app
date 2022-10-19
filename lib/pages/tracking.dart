
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrackingPage extends StatefulWidget{
  const TrackingPage({super.key});

  @override
  State<StatefulWidget> createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: const Text('Tracking chart', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
          )),
        ),
        Expanded(
            child: Container(
              color: Colors.lightBlue,
            )
        )
      ],
    );
  }

}
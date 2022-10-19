
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecurityPage extends StatefulWidget{
  const SecurityPage({super.key});

  @override
  State<StatefulWidget> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: const Text('Recent Report', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
          )),
        ),
        Container(
          color: Colors.lightBlue,
          height: 360,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: const Text('Security Team', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24
          )),
        ),
        Expanded(
            child: Container(
              color: Colors.lightBlue,
            )
        ),
      ],
    );
  }

}
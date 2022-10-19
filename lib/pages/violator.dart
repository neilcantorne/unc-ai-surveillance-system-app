
import 'package:flutter/material.dart';

class ViolatorPage extends StatefulWidget {
  const ViolatorPage({Key? key}) : super(key: key);

  @override
  State<ViolatorPage> createState() => _ViolatorPageState();
}

class _ViolatorPageState extends State<ViolatorPage> with TickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: const Text('Face Mask Violations', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
            )),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 3),
            child: const Text('Click the image to view move details.', style: TextStyle(
                color: Colors.grey,
                fontSize: 13
            )),
          ),
          Expanded(
              child: Container(
                color: Colors.lightBlue,
              )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        shape: const CircleBorder(),
        backgroundColor: Colors.redAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}
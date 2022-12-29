
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:unc_ai_surveillance_system_app/components/violator_card.dart';

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
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: const Text('Face Mask Violations', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
            )
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 3),
            child: const Text('Click the image to view move details.', style: TextStyle(
                color: Colors.grey,
                fontSize: 13
            )),
          ),
          Expanded(child: GridView.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              ViolatorCard(),
              ViolatorCard(),
              ViolatorCard(),
              ViolatorCard(),
              ViolatorCard(),
              ViolatorCard(),
              ViolatorCard(),
              ViolatorCard(),
              ViolatorCard(),
              ViolatorCard(),
              ViolatorCard(),

            ],
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.pushNamed('/report-violator');
        },
        shape: const CircleBorder(),
        backgroundColor: Colors.redAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}
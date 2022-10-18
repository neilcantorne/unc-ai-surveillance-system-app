
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith((states) => const EdgeInsets.all(16))
          ),
          child: const Text('Back to login'),
          onPressed: () => Modular.to.navigate('/auth/login'),
        ),
      ),
    );
  }
}
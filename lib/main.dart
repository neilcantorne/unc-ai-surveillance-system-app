import 'package:flutter/material.dart';
import 'package:unc_ai_surveillance_system_app/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UNC: COVID-19 Protocols AI Surveillance System',
      theme: ThemeData(
          primarySwatch: Colors.red,
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide:
                      const BorderSide(width: 0, style: BorderStyle.none)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: const BorderSide(
                  width: 2,
                  color: Colors.red,
                  style: BorderStyle.solid,
                ),
              ),
              filled: true,
              fillColor: const Color(0xfff8f8f8))),
      home: const StartScreen(),
    );
  }
}

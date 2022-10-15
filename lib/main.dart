import 'package:flutter/material.dart';
import 'package:unc_ai_surveillance_system_app/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(225, 42, 32, 1.0);
    const secondaryColor = Color.fromRGBO(225, 225, 225, 1.0);
    const defaultTextColor = Color.fromRGBO(125, 125, 125, 1.0);
        
    return MaterialApp(
      title: 'UNC: COVID-19 Protocols AI Surveillance System',
      theme: ThemeData(
          primaryColor: primaryColor,
          backgroundColor: Colors.white,
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide:  const BorderSide(
                      width: 0,
                      style: BorderStyle.none
                  )
              ),
              filled: true,
              fillColor: secondaryColor,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 1),
              hintStyle: TextStyle(
                  fontSize: Theme.of(context).textTheme.button?.fontSize,
                  fontWeight: FontWeight.w500,
                  color: defaultTextColor
              )
          ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) => primaryColor),
              foregroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
              textStyle: MaterialStateTextStyle.resolveWith((states) => TextStyle(
                  fontSize: Theme.of(context).textTheme.button?.fontSize,
                  fontWeight: FontWeight.w500,
              )),
              shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                      side: const BorderSide(color: Colors.red)
                    )
              ),
              padding: MaterialStateProperty.resolveWith((states) => const EdgeInsets.symmetric(vertical: 16))
          )
        ),
      ),
      home: const LoginPage(),
    );
  }
}

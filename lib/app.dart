import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:unc_ai_surveillance_system_app/modules/auth/login_page.dart';
import 'package:unc_ai_surveillance_system_app/modules/auth/index.dart';
import 'package:unc_ai_surveillance_system_app/modules/dashboard/dashboard_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) => const DashboardPage(), children: []),
        ModuleRoute('/auth', module: AuthModule()),
      ];
}

class AppWidget extends StatelessWidget {
  static const primaryColor = Color.fromRGBO(225, 42, 32, 1.0);
  static const secondaryColor = Color.fromRGBO(225, 225, 225, 1.0);
  static const defaultTextColor = Color.fromRGBO(125, 125, 125, 1.0);

  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'COVID-19 Protocols AI Surveillance System',
      theme: ThemeData(
        primaryColor: primaryColor,
        backgroundColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                  borderSide:
                      const BorderSide(width: 0, style: BorderStyle.none)),
            filled: true,
            fillColor: secondaryColor,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 1),
            hintStyle: TextStyle(
                fontSize: Theme.of(context).textTheme.button?.fontSize,
                fontWeight: FontWeight.w500,
                  color: defaultTextColor)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  elevation: 0,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                      side:
                          const BorderSide(width: 0, style: BorderStyle.none)),
                  padding: const EdgeInsets.symmetric(vertical: 16)))),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:unc_ai_surveillance_system_app/app_variables.dart';
import 'package:unc_ai_surveillance_system_app/pages/index.dart';

class AppModule extends Module {
  final AppVariables _variables;
  AppModule(this._variables);

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: PageModule(_variables)),
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
          useMaterial3: true,
          primaryColor: primaryColor,
          backgroundColor: secondaryColor,
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

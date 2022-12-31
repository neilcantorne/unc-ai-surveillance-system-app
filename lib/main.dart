import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:unc_ai_surveillance_system_app/app.dart';
import 'package:unc_ai_surveillance_system_app/app_variables.dart';

void main() async {
  //await dotenv.load(fileName: 'lib/config/.env');
  var variables = await AppVariables.variables;
  runApp(ModularApp(module: AppModule(variables), child: const AppWidget()));
}

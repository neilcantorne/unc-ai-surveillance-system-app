import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:unc_ai_surveillance_system_app/app.dart';

void main() async {
  await dotenv.load(fileName: 'lib/config/.env');
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

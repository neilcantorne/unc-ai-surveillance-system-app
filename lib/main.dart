import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:unc_ai_surveillance_system_app/app.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

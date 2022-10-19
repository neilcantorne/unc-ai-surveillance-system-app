import 'package:flutter/material.dart';
import 'package:unc_ai_surveillance_system_app/app_variables.dart';
import 'package:unc_ai_surveillance_system_app/screens/home_screen.dart';

MaterialPageRoute routeToHome(AppVariables appVariables) => MaterialPageRoute(
    builder: (context) => HomeScreen(appVariables: appVariables));

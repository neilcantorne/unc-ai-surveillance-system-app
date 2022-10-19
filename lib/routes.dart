import 'package:flutter/material.dart';
import 'package:unc_ai_surveillance_system_app/app_variables.dart';
import 'package:unc_ai_surveillance_system_app/models/user.dart';
import 'package:unc_ai_surveillance_system_app/screens/home_screen.dart';

MaterialPageRoute routeToHome(
        {required AppVariables appVariables, required User user}) =>
    MaterialPageRoute(
        builder: (context) => HomeScreen(vars: appVariables, user: user));

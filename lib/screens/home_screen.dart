import 'package:flutter/material.dart';
import 'package:unc_ai_surveillance_system_app/app_variables.dart';

import '../models/user.dart';

class HomeScreen extends StatefulWidget {
  final AppVariables appVariables;

  const HomeScreen({Key? key, required this.appVariables}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext ctx) => FutureBuilder(
      future: User.getCurrentUser(widget.appVariables),
      builder: (
        context,
        snapshot,
      ) {
        if (snapshot.hasData) {
          final user = snapshot.data as User;
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Text("Welcome ${user.firstName} ${user.lastName}"),
            ),
          );
        }

        return const SizedBox();
      });
}

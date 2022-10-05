import 'package:flutter/material.dart';
import 'package:unc_ai_surveillance_system_app/app_vars.dart';
import 'package:unc_ai_surveillance_system_app/pages/login_page.dart';

class StartScreen extends StatefulWidget {
  final AppVars vars;

  const StartScreen({Key? key, required this.vars}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final PageController page_controller = PageController();

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color(0xfff0f0f0),
        body: Center(
          child: Container(
              width: 800,
              height: 512,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(100, 0, 0, 0),
                        blurRadius: 6,
                        offset: Offset(4, 4),
                        spreadRadius: 4)
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 255, 106, 151),
                            Color.fromARGB(255, 255, 61, 61),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp),
                    )),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 64, horizontal: 32),
                      child: PageView(
                        controller: page_controller,
                        children: const [LoginPage()],
                      ),
                    ),
                  ),
                ],
              )),
        ),
      );
}

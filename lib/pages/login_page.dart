import 'package:flutter/material.dart';
import 'package:unc_ai_surveillance_system_app/app_variables.dart';

import '../models/user.dart';

class LoginPage extends StatefulWidget {
  final AppVariables appVariables;

  const LoginPage({Key? key, required this.appVariables}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberPassword = false;
  final formKey = GlobalKey<FormState>();
  final usernameCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  void _login() {
    if (!formKey.currentState!.validate()) {
      return;
    }

    final username = usernameCtrl.text;
    final password = passwordCtrl.text;

    User.login(
            appVariables: widget.appVariables,
            username: username,
            password: password)
        .catchError((err) {
      //TODO: Display error later
    });
  }

  @override
  Widget build(BuildContext context) => Form(
        key: formKey,
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Image.asset("assets/images/university_seal_120px.png", height: 120),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: TextFormField(
              controller: usernameCtrl,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person), hintText: "Username"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: TextFormField(
              controller: passwordCtrl,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.key), hintText: "Password"),
              obscureText: true,
            ),
          ),
          Row(children: [
            Checkbox(
                value: rememberPassword,
                onChanged: (value) => {
                      if (value != null)
                        {setState(() => rememberPassword = value)}
                    }),
            const Text("Remember me")
          ]),
          const Spacer(),
          SizedBox(
            height: 40,
            child:
                ElevatedButton(onPressed: _login, child: const Text("Login")),
          )
        ]),
      );
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

import 'package:flutter/material.dart';
import 'package:unc_ai_surveillance_system_app/app_vars.dart';

class LoginPage extends StatefulWidget {
  final AppVars vars;

  const LoginPage({Key? key, required this.vars}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberPassword = false;
  final formKey = GlobalKey<FormState>();
  final usernameCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  void login() {
    if (!formKey.currentState!.validate()) {
      return;
    }

    final _username = usernameCtrl.text;
    final _password = passwordCtrl.text;
  }

  @override
  Widget build(BuildContext context) => Form(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Image.asset("assets/images/university_seal_120px.png", height: 120),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person), hintText: "Username"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: TextFormField(
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
                ElevatedButton(onPressed: () => {}, child: const Text("Login")),
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

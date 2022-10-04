import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

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

    //TODO: Handle login later
  }

  @override
  Widget build(BuildContext context) => Form(
        key: formKey,
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Image.asset("assets/images/university_seal_120px.png"),
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
            child: ElevatedButton(onPressed: login, child: const Text("Login")),
          )
        ]),
      );
}

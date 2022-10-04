import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberPassword = false;

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

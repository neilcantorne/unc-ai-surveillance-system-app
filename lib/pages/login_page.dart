import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberPassword = false;

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    body: Center(
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipPath(
                    clipper: ClippingClass(),
                    child: Container(
                      decoration:  BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.65), BlendMode.dstATop),
                          image: Image.asset('assets/images/auth_bg.jpg').image,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 40,
                      child: Image.asset('assets/images/university_seal_120px.png', height: 110)
                  )
                ],
              )
          ),
          Expanded(
              flex: 3,
              child: Padding(
                  padding: const EdgeInsets.only(left: 48.0, right: 48.0, top: 32, bottom: 8),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'COVID-19 Protocols AI Surveillance System',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: Theme.of(context).textTheme.headline5?.fontSize,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),

                        Column(
                          children: const [
                            TextField(
                                decoration: InputDecoration(
                                  hintText: 'Username',
                                )
                            ),
                            SizedBox(height: 8),
                            TextField(
                              autocorrect: false,
                              obscureText: true,
                              decoration:  InputDecoration(
                                hintText: 'Password',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text('LOG IN'),
                          ),
                        )
                      ],
                    ),
                  )
              )
          ),
        ],
      ),
    ),
  );
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height-40);
    path.quadraticBezierTo(size.width / 4, size.height,
        size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
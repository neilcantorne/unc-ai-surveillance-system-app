import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:unc_ai_surveillance_system_app/api/auth/LoginService.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;

  final _formKey = GlobalKey<FormState>();

  void _onSubmit() {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);
    Future.delayed(const Duration(seconds: 2),
        () => {setState(() => _isLoading = false), Modular.to.navigate('/')});
  }

  @override
  Widget build(BuildContext context) {
    final LoginService service = Modular.get();
    service.login('username', 'password');

    return Scaffold(
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
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.white.withOpacity(0.65),
                                BlendMode.dstATop),
                            image:
                                Image.asset('assets/images/auth_bg.jpg').image,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 30,
                        child: Image.asset('assets/images/unc_seal.png',
                            height: 135))
                  ],
                )),
            Expanded(
                flex: 3,
                child: Padding(
                    padding: const EdgeInsets.only(
                        left: 48.0, right: 48.0, top: 16, bottom: 0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'COVID-19 Protocols AI Surveillance System',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.fontSize,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          Column(
                            children: [
                              TextFormField(
                                  validator: (value) {
                                    if (!(value == null || value.isEmpty))
                                      return null;
                                    return 'This field is required';
                                  },
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  decoration: const InputDecoration(
                                    hintText: 'Username',
                                  )),
                              const SizedBox(height: 12),
                              TextFormField(
                                autocorrect: false,
                                obscureText: true,
                                enableSuggestions: false,
                                validator: (value) {
                                  if (!(value == null || value.isEmpty))
                                    return null;
                                  return 'This field is required';
                                },
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: const InputDecoration(
                                  hintText: 'Password',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              width: double.infinity,
                              child: ElevatedButton.icon(
                                onPressed: _isLoading ? null : _onSubmit,
                                icon: _isLoading
                                    ? Container(
                                        width: 16,
                                        height: 16,
                                        padding: const EdgeInsets.all(2.0),
                                        child: const CircularProgressIndicator(
                                          color: Colors.white,
                                          strokeWidth: 3,
                                        ),
                                      )
                                    : const Icon(null, size: 0),
                                label: Text(_isLoading ? '' : 'Login'),
                              ))
                        ],
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
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

import 'package:flutter_modular/flutter_modular.dart';
import 'package:unc_ai_surveillance_system_app/app_variables.dart';
import 'package:unc_ai_surveillance_system_app/modules/auth/login_page.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.instance(AppVariables.variables)
  ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/login', child: (context, args) => const LoginPage())];
}



import 'package:flutter_modular/flutter_modular.dart';
import 'package:unc_ai_surveillance_system_app/app_variables.dart';
import 'package:unc_ai_surveillance_system_app/layout/dashboard.dart';
import 'package:unc_ai_surveillance_system_app/pages/login.dart';
import 'package:unc_ai_surveillance_system_app/pages/security.dart';
import 'package:unc_ai_surveillance_system_app/pages/tracking.dart';
import 'package:unc_ai_surveillance_system_app/pages/violator.dart';

class PageModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.instance(AppVariables.variables)
  ];

  @override
  List<ModularRoute> get routes =>
      [
        ChildRoute(
            '/',
            child: (context, args) => const DashboardLayout(),
            children: [
              ChildRoute('/violators', child: (context, args) => const ViolatorPage()),
              ChildRoute('/security', child: (context, args) => const SecurityPage()),
              ChildRoute('/tracking', child: (context, args) => const TrackingPage()),
            ],
            transition: TransitionType.noTransition),
        ChildRoute('/login', child: (context, args) => const LoginPage()),
      ];
}

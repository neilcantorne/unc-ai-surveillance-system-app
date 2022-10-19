
import 'package:unc_ai_surveillance_system_app/api/core/Service.dart';

abstract class AuthService extends Service{
  AuthService(super.dio);

  Future login(String username, String password);
  Future logout();
  Future getUser();
}
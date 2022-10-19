


import 'package:dio/dio.dart';
import 'package:unc_ai_surveillance_system_app/api/core/AuthService.dart';

class LoginService extends AuthService{
  LoginService(super.dio);

  @override
  Future getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future login(String username, String password) async {
     Response<dynamic> response = await dio.get('/users/login');
  }

  @override
  Future logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }


}
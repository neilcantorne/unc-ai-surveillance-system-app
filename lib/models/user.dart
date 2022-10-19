import 'package:unc_ai_surveillance_system_app/app_variables.dart';

class User {
  String id;
  String username;
  String firstName;
  String lastName;

  User(
      {required this.id,
      required this.username,
      required this.firstName,
      required this.lastName});

  User.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        username = json["username"],
        firstName = json["first-name"],
        lastName = json["last-name"];

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "first-name": firstName,
        "last-name": lastName,
      };

  static Future<void> login(
      {required AppVariables appVariables,
      required String username,
      required String password}) async {
    final response = await appVariables.httpClient.post("/users/login", data: {
      "username": username,
      "password": password,
      "device-os": appVariables.device.os,
      "device-name": appVariables.device.name,
      "device-signature": appVariables.device.signature
    });

    if (response.statusCode == 200) {
      final jwt = response.data.toString();

      // Save JSON Web Token to cookies
      if (appVariables.httpClient.options.headers.containsKey("Cookie")) {
        appVariables.httpClient.options.headers['Cookie'] = "jwt=$jwt";
      }
    }
  }
}

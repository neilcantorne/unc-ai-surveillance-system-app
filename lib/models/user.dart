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
}

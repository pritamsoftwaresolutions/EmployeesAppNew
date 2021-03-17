class User {
  int id = 0;
  String firstName = "";

  User({this.id, this.firstName});

  factory User.fromJson(Map<String, dynamic> json) {
    print('lll');
    return User(
      id: json['id'],
      firstName: json['firstName'],
    );
  }
}

class User{
  late String username;
  late String password;
  late String phone;
  late String email;

  User({required this.username,required this.password,required this.email,required this.phone});

  User.fromJson(Map <String,dynamic> json)
      : username = json['username'],
        password = json['password'];

  Map<String,dynamic> toJson() => {
    'username':username,
    'password':password,
  };
}


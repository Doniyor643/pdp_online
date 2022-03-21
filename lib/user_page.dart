import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class User{
  String name = '';
  String email = '';
  String phone = '';
  String password = '';
  String confirmPassword = '';

  User({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.confirmPassword,
  });

  User.fromJson(Map<String, dynamic>json)
      : name = json['name'],
        email = json['email'],
        phone = json['phone'],
        password = json['password'],
        confirmPassword = json['confirmPassword'];

  Map<String,dynamic>toJson()=>{
    'name':name,
    'email':email,
    'phone':phone,
    'password':password,
    'confirmPassword':confirmPassword,
  };

  /// Ma'lumotlarni saqlash

  static storeUser(User user)async{
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String stringUser = jsonEncode(user);
    _prefs.setString("user", stringUser);
  }

  ///User ma'lumotlarini o'qish

  static Future<User?> loadUser() async{
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? stringUser = _prefs.getString("user");
      if(stringUser == null || stringUser.isEmpty){
        return null;
      }
      Map<String, dynamic> map = jsonDecode(stringUser);
      return User.fromJson(map);
  }

}
import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProfileModel {
  final String email;
  final String password;
  final String confrimpassword;
  ProfileModel({
    required this.email,
    required this.password,
    required this.confrimpassword,
  });
  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
      'confrimpassword': confrimpassword,
    };
  }

  factory ProfileModel.fromMap(Map<String, dynamic> map) {
    return ProfileModel(
      email: (map['email'] ?? '') as String,
      password: (map['password'] ?? '') as String,
      confrimpassword: (map['confrimpassword'] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProfileModel.fromJson(String source) => ProfileModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

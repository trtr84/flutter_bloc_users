// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:flutter_bloc_users/model/users_city.dart';
import 'package:flutter_bloc_users/model/users_name.dart';

class Users {
  final String gender;
  final UsersName name;
  final UsersLocation city;

  Users({required this.gender, required this.name, required this.city});

  factory Users.fromMap(Map<String, dynamic> map) {
    return Users(
      gender: map['gender'] as String,
      name: UsersName.fromMap(map['name'] as Map<String,dynamic>),
      city: UsersLocation.fromMap(map['location'] as Map<String,dynamic>),
    );
  }
}

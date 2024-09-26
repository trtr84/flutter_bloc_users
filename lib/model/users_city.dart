// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UsersLocation {
  final String city;

  UsersLocation({required this.city});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': city,
    };
  }

  factory UsersLocation.fromMap(Map<String, dynamic> map) {
    return UsersLocation(
      city: map['city'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UsersLocation.fromJson(String source) => UsersLocation.fromMap(json.decode(source) as Map<String, dynamic>);
}

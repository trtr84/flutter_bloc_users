import 'dart:convert';

import 'package:flutter_bloc_users/model/users.dart';
import 'package:http/http.dart' as http;

class GetUsers {
  Future<List<Users>> fetchUsers()async {
    final response = await http.get(Uri.parse('https://randomuser.me/api/?results=30'));
    final body = response.body;
    final json = jsonDecode(body);
    final result = json['results'] as List<dynamic>;
    final transformed = result.map((e){
      return Users.fromMap(e);
    }).toList();
    return transformed;
  }
}
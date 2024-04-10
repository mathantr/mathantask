// api_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:usertask/model/userdata.dart';

class ApiService {
  Future<List<UserModel>> fetchUsers() async {
    final response =
        await http.get(Uri.parse('https://reqres.in/api/users?page=1'));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body);
      final List<dynamic> usersJson = parsed['data'];
      return usersJson.map((json) => UserModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}

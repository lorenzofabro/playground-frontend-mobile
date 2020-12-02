import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:playground/core/models/user.dart';

class Api {
  static const endpoint = 'http://192.168.100.14:3000/api';

  var client = new http.Client();

  Future<List<User>> getUsers() async {
    var users = List<User>();
    var response = await client.get('$endpoint/user/');
    Map<String, dynamic> map = json.decode(response.body);
    List<dynamic> data = map["data"];
    for (var user in data) {
      users.add(User.fromJson(user));
    }
    return users;
  }

  Future<User> getUser(int userId) async {
    var response = await client.get('$endpoint/user/$userId');
    // Good practice return 404 and ask for that (response.statusCode)
    return response.body.length > 0
        ? User.fromJson(json.decode(response.body))
        : null;
  }
}

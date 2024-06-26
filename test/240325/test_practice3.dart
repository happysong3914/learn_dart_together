import 'dart:convert';
import 'dart:math';

import 'package:learn_dart_together/240325/user.dart';
import 'package:learn_dart_together/240325/data_source/user_api.dart';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;

void main() async {
  test('practice3', () async {
    UserApi userApi = UserApi();
    List<User> users = await userApi.getUsers();

    print(users[0]);

    expect(users[0] is User, true);
  });
}

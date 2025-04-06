import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_info.dart';

class AppService {
  static final AppService _instance = AppService._internal();
  factory AppService() => _instance;
  AppService._internal();

  Future<UserInfo> fetchUserInfo() async {
    final response = await http.get(Uri.parse('https://api.example.com/user'));

    if (response.statusCode == 200) {
      return UserInfo.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load user info');
    }
  }
}

import 'package:flutter/material.dart';
import '../services/app_service.dart';
import '../models/user_info.dart';

class DataController extends ChangeNotifier {
  UserInfo? userInfo;
  bool isLoading = false;

  Future<void> fetchUserInfo() async {
    isLoading = true;
    notifyListeners();

    try {
      userInfo = await AppService().fetchUserInfo();
    } catch (e) {
      userInfo = UserInfo.empty();
    }

    isLoading = false;
    notifyListeners();
  }
}

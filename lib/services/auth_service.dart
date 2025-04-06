class AuthService {
  static final AuthService _instance = AuthService._internal();
  factory AuthService() => _instance;
  AuthService._internal();

  bool isLoggedIn = false;
  Map<String, String> userInfo = {};

  void login(String username, String password) {
    isLoggedIn = true;
    userInfo = {"username": username, "email": "$username@example.com"};
  }

  void register(String username, String email) {
    userInfo = {"username": username, "email": email};
  }

  void updateUserInfo(String key, String value) {
    userInfo[key] = value;
  }
}

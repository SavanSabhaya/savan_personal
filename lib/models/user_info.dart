class UserInfo {
  final String firstName;
  final String lastName;
  String get name => "$firstName $lastName";

  UserInfo({required this.firstName, required this.lastName});

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      firstName: json['first_name'] ?? '',
      lastName: json['last_name'] ?? '',
    );
  }

  factory UserInfo.empty() {
    return UserInfo(firstName: '', lastName: '');
  }
}

class UserSession {
  static final UserSession _instance = UserSession._internal();

  String? id;
  String? name;
  String? email;
  String? avatar;

  factory UserSession() {
    return _instance;
  }

  UserSession._internal();

  void login({required String id, required String name, required String email, required String avatar}) {
    this.id = id;
    this.name = name;
    this.email = email;
    this.avatar = avatar;
  }

  void logout() {
    id = null;
    name = null;
    email = null;
    avatar = null;
  }
}



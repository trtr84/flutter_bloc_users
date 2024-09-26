class UsersName {
  final String first;
  UsersName({required this.first});
  factory UsersName.fromMap(Map<String, dynamic> map) {
    return UsersName(
      first: map['first'] as String,
    );
  }
}

import 'package:flutter_bloc_users/model/users.dart';

class UsersBlocState {
  final List<Users> listUsers;
  final bool isLoading;

  UsersBlocState({this.listUsers = const [], this.isLoading = false});

  UsersBlocState copyWith({List<Users>? listUsers, bool? isLoading}) {
    return UsersBlocState(
        listUsers: listUsers ?? this.listUsers,
        isLoading: isLoading ?? this.isLoading);
  }
}



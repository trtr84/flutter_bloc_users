import 'package:flutter_bloc_users/model/users.dart';

class UsersBlocState {}

class UsersBlocInitial extends UsersBlocState {}
class LoadingListState extends UsersBlocState {}
class LoadedListState extends UsersBlocState{
  final List<Users> listUsers;

  LoadedListState({required this.listUsers});

}


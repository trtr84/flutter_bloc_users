// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_users/bloc/users_bloc_event.dart';
import 'package:flutter_bloc_users/bloc/users_bloc_state.dart';
import 'package:flutter_bloc_users/repository/get_users.dart';
import 'package:flutter_bloc_users/model/users.dart';

class UsersBloc extends Bloc<UsersBlocEvent, UsersBlocState> {
  UsersBloc() : super(UsersBlocState()) {
    on<LoadedUsersEvent>(getUsers);
  }
  // ignore: non_constant_identifier_names
  getUsers(LoadedUsersEvent, Emitter<UsersBlocState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final List<Users> listUsers = await GetUsers().fetchUsers();
      emit(
        state.copyWith(listUsers: listUsers),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: true));
    }
  }
}

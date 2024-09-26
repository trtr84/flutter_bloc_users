import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_users/bloc/users_bloc_event.dart';
import 'package:flutter_bloc_users/bloc/users_bloc_state.dart';
import 'package:flutter_bloc_users/repository/get_users.dart';
import 'package:flutter_bloc_users/model/users.dart';

class UsersBloc extends Bloc<UsersBlocEvent, UsersBlocState> {
  UsersBloc() : super(UsersBlocInitial()) {
    on<LoadedUsersEvent>((event, emit) async {
      emit(LoadingListState());
      try {
        final List<Users> listUsers = await GetUsers().fetchUsers();
        print(listUsers.length);
        emit(
          LoadedListState(listUsers: listUsers),
        );
      } catch (e) {
        emit(UsersBlocInitial());
      }
    });
  }
}

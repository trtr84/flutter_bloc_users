import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_users/bloc/users_bloc.dart';
import 'package:flutter_bloc_users/bloc/users_bloc_event.dart';
import 'package:flutter_bloc_users/repository/get_users.dart';
import 'package:flutter_bloc_users/model/users.dart';

import '../bloc/users_bloc_state.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    context.read<UsersBloc>().add(LoadedUsersEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: BlocBuilder<UsersBloc, UsersBlocState>(
        builder: (context, state) {
          final users = state.listUsers;
          if (users.isNotEmpty) {
            return ListView.builder(
              itemCount: state.listUsers.length,
              itemBuilder: (context, index) {
                final user = state.listUsers[index];
                return ListTile(
                  title: Text(user.name.first),
                  subtitle: Text(user.city.city),
                );
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<UsersBloc>().add(LoadedUsersEvent());
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}

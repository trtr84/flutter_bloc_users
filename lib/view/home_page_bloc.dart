import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_users/bloc/users_bloc.dart';
import 'package:flutter_bloc_users/bloc/users_bloc_state.dart';
import 'package:flutter_bloc_users/screen/first_page.dart';

class MyHomePageBloc extends StatefulWidget {
  const MyHomePageBloc({super.key});

  @override
  State<MyHomePageBloc> createState() => _MyHomePageBlocState();
}

class _MyHomePageBlocState extends State<MyHomePageBloc> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsersBloc(),
      child: FirstPage(),
    );
  }
}

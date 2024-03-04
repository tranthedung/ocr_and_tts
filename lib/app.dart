import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ocr_and_tts/app_view.dart';
import 'package:ocr_and_tts/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:user_repository/user_repository.dart';

class MyApp extends StatelessWidget {
  final UserRepository userRepository;
  const MyApp(
    this.userRepository, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
      create: (context) => AuthenticationBloc(
        userRepository: userRepository,
      ),
      child: MyAppView(),
    );
  }
}

import 'package:cinescope/pages/home_page.dart';
import 'package:cinescope/pages/ringtones_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cinescope/pages/login_page.dart';
import 'package:cinescope/blocs/form_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FormBloc(), // Provide the FormBloc at the root
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CineScope',
        theme: ThemeData(
          brightness: Brightness.dark,
          useMaterial3: true,
        ),
        home:  LoginPage(), // Set LoginPage as the initial screen
      ),
    );
  }
}

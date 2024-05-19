import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idegostar/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:idegostar/features/authentication/presentation/pages/login_page.dart';
import 'package:idegostar/features/authentication/presentation/pages/signup_page.dart';
import 'package:idegostar/injection_container.dart' as di;
import 'package:idegostar/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AuthenticationBloc>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Idegostar Task',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2FACE3)),
          useMaterial3: true,
          fontFamily: 'Dana',
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginPage(),
          '/signup': (context) => const SignUpPage(),
        },
      ),
    );
  }
}

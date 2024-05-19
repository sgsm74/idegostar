import 'package:flutter/material.dart';
import 'package:idegostar/features/authentication/presentation/pages/login_page.dart';
import 'package:idegostar/features/authentication/presentation/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Idegostar Task',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2FACE3)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
      },
    );
  }
}

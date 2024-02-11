import 'package:firebase/features/app/splash_screen/splash_screen.dart';
import 'package:firebase/features/user_auth/presentation/pages/home_page.dart';
import 'package:firebase/features/user_auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/home': (context) => const HomePage(),
          '/Login': (context) => const LoginPage(),
        },
        // debugShowCheckedModeBanner: false,
        title: "Learning Firebase",
        home: const SplashScreen(
          child: LoginPage(),
        ));
  }
}

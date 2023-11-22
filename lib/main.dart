import 'package:flutter/material.dart';
import 'package:hm_entregas/modules/home/page.dart';
import 'package:hm_entregas/modules/login/page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hm_entregas/modules/splash/page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

var routes = <String, WidgetBuilder>{
  '/login': (BuildContext context) => const LoginScreen(),
  '/home': (BuildContext context) => const HomeScreen(),
};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      routes: routes,
    );
  }
}

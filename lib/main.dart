import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hm_entregas/modules/home/home_temp.dart';
import 'package:hm_entregas/modules/login/login_temp.dart';
import 'package:hm_entregas/modules/login/page.dart';
import 'package:hm_entregas/modules/splash/page.dart';

import 'package:firebase_core/firebase_core.dart';
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
};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RoteadorTela(),
      routes: routes,
    );
  }
}

//Para manter o usuario logado
class RoteadorTela extends StatelessWidget {
  const RoteadorTela({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.userChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const Home();
        } else {
          return Login();
        }
      },
    );
  }
}

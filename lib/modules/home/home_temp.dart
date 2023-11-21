import 'package:flutter/material.dart';
import 'package:hm_entregas/services/auth_services.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Deslogar"),
              onTap: () {
                AuthServices().userLogout();
              },
            )
          ],
        ),
      ),
    );
  }
}

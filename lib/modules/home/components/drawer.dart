import 'package:flutter/material.dart';
import 'package:hm_entregas/services/auth_services.dart';

class DrawerComp extends StatelessWidget implements PreferredSizeWidget {
  const DrawerComp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

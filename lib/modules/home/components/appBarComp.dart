import 'package:flutter/material.dart';

class AppBarComp extends StatelessWidget implements PreferredSizeWidget {
  const AppBarComp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Home Page'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

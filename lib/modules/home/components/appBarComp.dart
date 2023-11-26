import 'package:flutter/material.dart';
import 'package:hm_entregas/utils/colors.dart';

class AppBarComp extends StatelessWidget implements PreferredSizeWidget {
  const AppBarComp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Home Page',
        style: TextStyle(color: ThemaColors.primaryBackground),
      ),
      backgroundColor: ThemaColors.redCustonColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

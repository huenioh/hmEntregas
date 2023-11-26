import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:hm_entregas/utils/colors.dart';

class BottonNavBarComp extends StatelessWidget implements PreferredSizeWidget {
  const BottonNavBarComp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      backgroundColor: ThemaColors.redCustonColor,
      items: const [
        TabItem(icon: Icons.local_shipping_rounded, title: 'Entregas'),
        TabItem(icon: Icons.history, title: 'Histórico'),
        TabItem(icon: Icons.add, title: 'Nova Entrega'),
      ],
      onTap: (int i) => print('click index=$i'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

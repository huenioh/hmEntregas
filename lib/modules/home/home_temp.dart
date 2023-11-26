import 'package:flutter/material.dart';
import 'package:hm_entregas/modules/home/components/appBarComp.dart';
import 'package:hm_entregas/modules/home/components/drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarComp(),
      drawer: DrawerComp(),
    );
  }
}

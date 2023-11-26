import 'package:flutter/material.dart';
import 'package:hm_entregas/utils/colors.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemaColors.primaryBackground,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',
              width: 150,
              height: 75,
            ),
            const SizedBox(
              height: 30,
            ),
            const CircularProgressIndicator(
              valueColor:
                  AlwaysStoppedAnimation<Color>(Color.fromRGBO(236, 51, 57, 1)),
            ),
          ],
        ),
      ),
    );
  }
}

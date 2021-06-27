import 'package:aprenda_ipv6/res/custom_colors.dart';
import 'package:flutter/material.dart';
//import 'package:flutterfire_samples/res/custom_colors.dart';

class AppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/logoipv6.png',
          height: 40,
        ),
        SizedBox(width: 8),
        Text(
          'Seja Bem Vindo!',
          style: TextStyle(
            color: Colors.green,
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}

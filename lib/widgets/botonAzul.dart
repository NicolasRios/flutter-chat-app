// ignore_for_file: sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const BotonAzul({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        primary: Colors.blue,
        shape: const StadiumBorder(),
      ),
      // style: ButtonStyle(
      //   elevation: MaterialStateProperty.resolveWith(
      //     (states) {
      //       if (states.contains(MaterialState.pressed)) return 10.0;
      //       return 5.0;
      //     },
      //   ),
      // ),
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        height: 55,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

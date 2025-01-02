import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class SecondaryButtonWidget extends StatelessWidget {
  final String label;
  final void Function() onPressed;
  const SecondaryButtonWidget({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(Constants.primaryRed()),
            fixedSize: const Size(270, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Color(Constants.primaryWhite())
          ),
        ));
  }
}

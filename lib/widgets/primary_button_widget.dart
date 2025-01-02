import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spar_pos/pages/dashboard.dart';

import '../helpers/constants.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String label;
  final void Function() onPressed;
  const PrimaryButtonWidget({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(Constants.primaryGreen()),
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

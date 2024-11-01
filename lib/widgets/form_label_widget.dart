import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class FormLabelText extends StatelessWidget {
  final String title;
  double fontSize;
  FontWeight fontWeight;

  FormLabelText({
    super.key,
    required this.title,
    this.fontWeight = FontWeight.w600,
    this.fontSize = 14
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 8),
      child: Text(
        title,
        style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: Color(Constants.primaryBlack())
        ),
      ),
    );
  }
}

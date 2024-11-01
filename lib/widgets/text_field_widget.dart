import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class TextFieldWidget extends StatelessWidget {
  final String hint;
  final void Function(String) onChanged;
  final String validatorName;
  const TextFieldWidget({super.key, required this.hint, required this.onChanged, required this.validatorName});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        isDense: true,
        filled: true,
        hintText: hint,
        hintStyle: TextStyle(
            color: Color(Constants.primaryBlack())),
        fillColor: Colors.grey.shade300,
        border: OutlineInputBorder(
            borderRadius:
            BorderRadius.circular(8.0)),
        enabledBorder: OutlineInputBorder(
          borderRadius:
          BorderRadius.circular(8.0),
          borderSide: BorderSide(
              color:
              Color(Constants.primaryWhite())),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius:
            BorderRadius.circular(8.0),
            borderSide: BorderSide(
                color: Color(
                    Constants.primaryGreen()))),
        errorBorder: OutlineInputBorder(
            borderRadius:
            BorderRadius.circular(8.0),
            borderSide:const
            BorderSide(color: Colors.red)),
      ),
      onChanged: (v) => onChanged,
      validator: (v) {
        if (v == null || v.isEmpty) {
          return 'Enter your $validatorName';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.name,
    );
  }
}

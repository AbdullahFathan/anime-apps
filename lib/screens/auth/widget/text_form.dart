import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final String labelText;
  final TextInputType textInputType;
  const TextFormWidget({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.labelText,
    required this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Colors.blueAccent),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Colors.blueAccent),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

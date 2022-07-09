import 'package:flutter/material.dart';

class RectangularTextField extends StatelessWidget {
  const RectangularTextField({
    Key? key,
    required this.onTextChanged,
    this.hint = '',
    this.obscureText = false,
  }) : super(key: key);

  final String hint;
  final bool obscureText;
  final Function(String) onTextChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onTextChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: hint,
      ),
    );
  }
}

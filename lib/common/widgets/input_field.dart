import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final Widget? suffixIcon;
  final String? errorText;
  final bool? obscureText;
  final void Function(String?) onChanged;

  const InputField({
    Key? key,
    this.controller,
    this.hintText,
    this.labelText,
    this.suffixIcon,
    this.obscureText,
    this.errorText,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon,
        errorText: errorText,
      ),
    );
  }
}

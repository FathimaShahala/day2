import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool obscureText;
  final TextInputType? keyboardType;
  final String label;
  final String hintText;
  final Widget? suffixIcon;
  final String? Function(String?) validator;

  const CustomTextField({
    super.key,
    required this.keyboardType,
    required this.label,
    required this.hintText,
    required this.validator,
    required this.suffixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(-1, -1),
                blurRadius: 1,
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: TextFormField(
            obscureText: obscureText,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              label: Text(label),
              labelStyle: const TextStyle(color: Colors.black),
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
              border: InputBorder.none,
              suffixIcon: suffixIcon,
            ),
            validator: validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ));
  }
}

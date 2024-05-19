import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextInput extends StatefulWidget {
  const CustomTextInput({
    super.key,
    required this.hintText,
    required this.controller,
    required this.isObscure,
    this.inputFormatters,
  });
  final String hintText;
  final TextEditingController controller;
  final bool isObscure;
  final List<TextInputFormatter>? inputFormatters;
  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.right,
      textDirection: TextDirection.rtl,
      inputFormatters: widget.inputFormatters,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        hintText: 'رمز عبور',
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TextFieldCustom extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData? suffixIcon;

  const TextFieldCustom({
    required this.controller,
    required this.hintText,
    this.suffixIcon,
    Key? key,
  }) : super(key: key);

  @override
  State<TextFieldCustom> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<TextFieldCustom> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: !isVisible,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
        suffixIcon: widget.suffixIcon != null
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                child: isVisible
                    ? Icon(
                        widget.suffixIcon,
                        color: Colors.grey,
                      )
                    : const Icon(Icons.visibility_off, color: Colors.grey),
              )
            : null,
      ),
    );
  }
}

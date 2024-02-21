import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final bool obscureText;

  final _formkey = GlobalKey<FormState>();

  MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Form(
        key: _formkey,
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black)),
              fillColor: Colors.grey[200],
              filled: true,
              labelText: labelText,
              labelStyle: TextStyle(color: Colors.grey[600]),
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey[300])),
        ),
      ),
    );
  }
}

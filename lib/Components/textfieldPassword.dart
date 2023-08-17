import 'package:flutter/material.dart';

class MyTextfieldPassword extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final Function()? onPre;
  const MyTextfieldPassword({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.onPre
  });
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(obscureText? Icons.visibility_off
                : Icons.visibility),
            color: Colors.greenAccent,
            onPressed: onPre,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(color: Colors.grey.shade400)
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500]),

        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:firebase/login/companents/input_container.dart';
import 'package:firebase/login/constants.dart';

class RoundedPassword extends StatelessWidget {
  const RoundedPassword({
    Key? key,
    required this.hint
  }) : super(key: key);

  final String hint;


  @override
  Widget build(BuildContext context) {
    return InputContainer(
        child: TextField(
      cursorColor: kPrimaryColor,
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(Icons.lock, color: kPrimaryColor),
          hintText: hint,
          border: InputBorder.none),
    ));
  }
}

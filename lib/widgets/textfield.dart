import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final bool isPass;
  final String hintText;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  const TextFieldInput(
      {super.key,
      required this.isPass,
      required this.hintText,
      required this.textEditingController,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return Container(
      child: Column(children: [
        TextField(
            keyboardType: textInputType,
            obscureText: isPass,
            decoration: InputDecoration(
                hintText: hintText,
                border: inputBorder,
                focusedBorder: inputBorder,
                enabledBorder: inputBorder,
                filled: true,
                contentPadding: EdgeInsets.all(10))),
      ]),
    );
  }
}

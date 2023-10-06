import 'package:flutter/material.dart';
import 'package:nectar_app/size.dart';

class TextForm extends StatelessWidget {
  final String text;
  final double textFieldWidthRatio;

  TextForm({
    required this.text,
    required this.textFieldWidthRatio,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$text",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: small_gap),
        Container(
          width: MediaQuery.of(context).size.width * textFieldWidthRatio,
          child: TextFormField(),
        ),
      ],
    );
  }
}

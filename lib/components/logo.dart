import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  String title;
  Logo(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: 200, height: 200, child: Image.asset("assets/carrot.png")),
        Text(
          "$title",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}

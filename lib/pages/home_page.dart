import 'package:flutter/material.dart';
import 'package:nectar_app/components/logo.dart';
import 'package:nectar_app/size.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: xlarge_gap),
            Logo("Nectar"),
            SizedBox(height: xlarge_gap),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  child: SizedBox(
                    width: 100,
                    height: 50,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "시작",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  child: SizedBox(
                    width: 100,
                    height: 50,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "로그인",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

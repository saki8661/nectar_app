import 'package:flutter/material.dart';
import 'package:nectar_app/components/logo.dart';
import 'package:nectar_app/components/text_form.dart';
import 'package:nectar_app/size.dart';
import 'package:nectar_app/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  final double textFieldWidthRatio = 0.8; // 화면 너비의 80%로 설정

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ListView(
        children: [
          SizedBox(height: large_gap),
          Logo("Login"),
          SizedBox(height: large_gap),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextForm(
                    textFieldWidthRatio: textFieldWidthRatio, text: 'username'),
                SizedBox(height: large_gap),
                TextForm(
                    textFieldWidthRatio: textFieldWidthRatio, text: 'password'),
                SizedBox(height: large_gap),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Forget Passwword?",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: large_gap),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size(double.infinity, 60),
                    ),
                    child: Text(
                      "로그인",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: large_gap),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have a accout?"),
                    SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/home");
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(color: primaryGreen),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

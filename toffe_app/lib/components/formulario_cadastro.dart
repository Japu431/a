import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormsCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [LogoExports()],
    );
  }
}

class LogoExports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/images/Logo.png", width: 250, height: 200),
      alignment: Alignment.center,
    );
  }
}

class Field extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
              fillColor: Color(0xFFFFFFFF),
              filled: true,
              prefixIcon: Icon(Icons.email),
              hintText: "E-mail",
              border: OutlineInputBorder()),
        ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toffe_app/components/formulario_cadastro.dart';

import 'components/formulario_login.dart';

void main() => runApp(ToffeApp());

class ToffeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Container(
          child: FormsCadastro(),
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}

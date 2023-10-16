import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/formulario_login.dart';
import 'components/formulario_cadastro.dart';
import 'components/home_forms.dart';

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
          child: HomeForms(),
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ), 
    );
  }
}

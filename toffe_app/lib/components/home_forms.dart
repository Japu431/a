import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './formulario_cadastro.dart';
import './formulario_login.dart';

class HomeForms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LogoExports(),
        Padding(
            padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            child: SizedBox(
              width: double.infinity,
              height: 40.0,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFEF6B25),
                    onPrimary: Colors.white,
                    shadowColor: Colors.greenAccent,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FormsLogin()),
                    );
                  },
                  child: Text(
                    "Fazer Login",
                  )),
            )),
        Padding(
            padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            child: SizedBox(
              width: double.infinity,
              height: 40.0,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFEF6B25),
                    onPrimary: Colors.white,
                    shadowColor: Colors.greenAccent,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FormsCadastro()),
                    );
                  },
                  child: Text(
                    "Criar Conta",
                  )),
            )),
      ],
    );
  }
}

class LogoExports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/images/Logo.png", width: 250, height: 300),
      alignment: Alignment.center,
    );
  }
}

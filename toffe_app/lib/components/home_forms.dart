import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeForms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LogoExports(),
        ButtonComponets("Fazer Login"),
        ButtonComponets("Criar conta")
      ],
    );
  }
}

class ButtonComponets extends StatelessWidget {
  final String rotulo;

  const ButtonComponets(this.rotulo);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              onPressed: () {},
              child: Text(
                rotulo,
              )),
        ));
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

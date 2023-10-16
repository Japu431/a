import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormsCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [LogoExports(), FormsFields()],
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

class FormsFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldComponents("Nome Completo", Icons.people),
        TextFieldComponents("Telefone", Icons.phone),
        TextFieldComponents("E-mail", Icons.email),
        TextFieldComponents("Senha", Icons.password),
        Text(
          "Ao se inscrever, você concorda com nossos",
          style: TextStyle(color: Colors.white),
        ),
        Text(
          "Termos e Condições e Política de Privacidade.*",
          style: TextStyle(color: Colors.orange),
        ),
        ButtonComponets(),
      ],
    );
  }
}

class TextFieldComponents extends StatelessWidget {
  final String _rotulo;
  final IconData _icon;

  const TextFieldComponents(this._rotulo, this._icon);

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
                fillColor: Color(0xFFFFFFFF),
                filled: true,
                prefixIcon: Icon(_icon),
                hintText: _rotulo,
                border: OutlineInputBorder()),
          ),
        ],
      ),
    );
  }
}

class ButtonComponets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16.0),
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
                "Cadastrar",
              )),
        ));
  }
}

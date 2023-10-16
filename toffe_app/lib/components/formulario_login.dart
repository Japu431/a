import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormsLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [LogoExports(), FormFields(), FirstRoute()],
    );
  }
}

class LogoExports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/images/Logo.png", width: 250, height: 200),
    );
  }
}

class FormFields extends StatelessWidget {
  final TextEditingController _controladorEmail = TextEditingController();
  final TextEditingController _controladorSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _controladorEmail,
            decoration: InputDecoration(
                fillColor: Color(0xFFFFFFFF),
                filled: true,
                prefixIcon: Icon(Icons.email),
                hintText: "E-mail",
                border: OutlineInputBorder()),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: TextField(
              controller: _controladorSenha,
              decoration: InputDecoration(
                  fillColor: Color(0xFFFFFFFF),
                  filled: true,
                  prefixIcon: Icon(Icons.password),
                  hintText: "Senha",
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 16.0),
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
                      final String email = _controladorEmail.text;
                      final String senha = _controladorSenha.text;

                      final Produto produtoNovo = Produto(email, senha);
                      print(produtoNovo);
                    },
                    child: Text(
                      "Entrar",
                    )),
              ))
        ],
      ),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.black,
      child: Center(
        child: CupertinoButton(
          child: const Text('Não tem conta? Criar conta',
              style: TextStyle(color: Colors.white)),
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Second Route'),
      ),
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class Produto {
  final String email;
  final String senha;

  Produto(this.email, this.senha);

  @override
  String toString() {
    return 'Produto{Email: $email, Senha: $senha}';
  }
}

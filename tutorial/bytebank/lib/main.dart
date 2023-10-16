import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: FormularioTransferencia(),
    ));
  }
}

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Criando Transferência")),
      body: Column(
        children: [
          Editor(
              controller: controladorCampoNumeroConta,
              "Número da Conta",
              "0001",
              null),
          Editor(controladorCampoValor, "Valor Reais", "1.000",
              Icons.monetization_on),
          ElevatedButton(
              onPressed: () {
                final int? numeroConta =
                    int.tryParse(controladorCampoNumeroConta.text);
                final double? valor =
                    double.tryParse(controladorCampoValor.text);

                if (numeroConta != null && valor != null) {
                  final transferenciaCriada = Transferencia(valor, numeroConta);

                  debugPrint('$transferenciaCriada');
                }
              },
              child: Text("Confirmar")),
        ],
      ),
    );
  }
}

class Editor extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData icon;

  const Editor(
      {required this.controlador,
      required this.rotulo,
      required this.dica,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 18.0),
        decoration: InputDecoration(
            icon: Icon(icon), labelText: rotulo, hintText: dica),
      ),
    );
  }
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transferências"),
      ),
      body: Column(children: [
        ItemTransferencia(Transferencia(100.0, 20001)),
        ItemTransferencia(Transferencia(200.0, 30001)),
        ItemTransferencia(Transferencia(300.0, 404001)),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;
  const ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text(_transferencia._valor.toString()),
      subtitle: Text(_transferencia._numeroConta.toString()),
    ));
  }
}

class Transferencia {
  final double _valor;
  final int _numeroConta;

  Transferencia(this._valor, this._numeroConta);

  @override
  String toString() {
    return 'Transferência {valor: $_valor, numero da conta: $_numeroConta}';
  }
}

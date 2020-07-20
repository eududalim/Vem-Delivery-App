import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CadProdutos extends StatefulWidget {
  @override
  _CadProdutosState createState() => _CadProdutosState();
}

class _CadProdutosState extends State<CadProdutos> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Cadastro de Produtos"),
        centerTitle: true,
      ),
      body: Column(children: <Widget>[
        //1a linha
        Row(children: <Widget>[
          Text("Nome: "),
          TextField(keyboardType: TextInputType.text),
        ]),
        //2a linha
        Row(children: <Widget>[
          Text("Descrição: "),
          TextField(keyboardType: TextInputType.text),
        ]),
        //3a linha
        Row(children: <Widget>[
          Text("Preço: "),
          TextField(
            keyboardType: TextInputType.numberWithOptions(decimal: true)),
        ]),
        Center(
          child: RaisedButton(
          onPressed: () {},
          child: Text("Cadastrar"),
          
        ))
      ]),
    ));
  }
}

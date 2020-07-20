import 'package:flutter/material.dart';
import 'package:food_delivery/const/inputDecoration.dart';

class CadastroUsuario extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final _controllerNome = TextEditingController(text: '');
  final _controllerEmail = TextEditingController(text: '');
  final _controllerCelular = TextEditingController(text: '');
  final _controllerSenha = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: SafeArea(
        child: ListView(
          children: <Widget>[
            //HEADER
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Crie uma nova conta',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
              ),
            ),
            // FIM HEADER
            SizedBox(
              height: 50,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: inputDecoration(
                          'Nome Completo', Icons.person_outline),
                      controller: _controllerNome,
                      validator: (value) {
                        if (value.isEmpty || value.length < 12) {
                          return 'Digite seu nome completo';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration:
                          inputDecoration('Email', Icons.alternate_email),
                      controller: _controllerEmail,
                      validator: (value) {
                        String pattern =
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
                        bool emailValid = RegExp(pattern).hasMatch(value);
                        if (value.isEmpty) {
                          return 'Digite um email';
                        } else if (!emailValid) {
                          return 'Digite um email válido';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: inputDecoration('Celular', Icons.local_phone),
                      controller: _controllerCelular,
                      validator: (value) {
                        String pattern =
                            r'^\\([0-9]{2}\\)((3[0-9]{7})|(9[0-9]{8}))$';
                        bool phoneValid = RegExp(pattern).hasMatch(value);
                        if (value.isEmpty) {
                          return 'Digite um número de celular';
                        }
                        if (!phoneValid) {
                          return 'Digite um número de celular válido';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration:
                          inputDecoration('Senha segura', Icons.lock_outline),
                      controller: _controllerSenha,
                      validator: (value) {
                        String pattern =
                            r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$";
                        bool passwordValid = RegExp(pattern).hasMatch(value);
                        if (value.isEmpty) {
                          return 'Digite uma senha segura';
                        }
                        if (!passwordValid) {
                          return 'Mínimo de oito caracteres,uma letra e um número';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: inputDecoration(
                          'Confirme sua senha', Icons.lock_outline),
                      validator: (value) {
                        if (value.compareTo(_controllerSenha.text) != 0) {
                          return 'As senhas não são iguais';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text('Enviando Dados')));
                        }
                      },
                      color: Colors.yellow[800],
                      child: Text(
                        'Criar',
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/controller/controllerAuth.dart';
import 'package:food_delivery/view/pages/cadUsuarioPage.dart';
import 'package:food_delivery/const/inputDecoration.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _controllerEmail = TextEditingController();

  var _controllerSenha = TextEditingController();

  String textEmail;

  String textSenha;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 60),
          children: <Widget>[
            Center(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                height: 500,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: _listView(context),
              ),
            ),
            FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CadastroUsuario()));
                },
                child: Text('Criar uma nova conta')),
          ],
        ),
      ),
    );
  }

  ListView _listView(BuildContext context) {
    return ListView(
      //padding: EdgeInsets.only(top: 35),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        //SizedBox(height: 30),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // HEADER
              Container(
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'ss/logo-icon.png',
                      width: 120,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Vem",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          "Delivery",
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        //Container dos inputs
        Container(
          //margin: EdgeInsets.fromLTRB(35, 0, 15, 0),
          child: Column(
            children: <Widget>[
              TextField(
                cursorColor: Colors.black87,
                controller: _controllerEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: inputDecoration('Email', Icons.email),
                onSubmitted: (textEmail) {
                  _controllerEmail.text = textEmail;
                },
              ),
              SizedBox(height: 30),
              TextField(
                controller: _controllerSenha,
                keyboardType: TextInputType.emailAddress,
                decoration: inputDecoration('Senha', Icons.lock),
                onSubmitted: (textEmail) {
                  _controllerEmail.text = textEmail;
                },
              ),
              Align(
                alignment: Alignment.centerRight,
                child: FlatButton(
                    onPressed: () {},
                    textColor: Colors.black54,
                    child: Text('Esqueceu a senha?')),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.yellow[800],
                    borderRadius: BorderRadius.circular(25)),
                width: 300,
                height: 45,
                child: Expanded(
                  child: FlatButton(
                    child: Text(
                      'Entrar',
                      textScaleFactor: 1.3,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    getLoginGoogle();
                    Navigator.pop(context);
                  });
                },
                child: Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Image.asset(
                          'ss/google-icon.png',
                          errorBuilder: (context, error, stackTrace) =>
                              Icon(Icons.error_outline),
                          height: 25,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 25),
                          child: Text(
                            'Entrar com o Google',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();

final FirebaseAuth _auth = FirebaseAuth.instance;

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

Future<FirebaseUser> _getUser() async {
  final FirebaseUser _currentUser = await _auth.currentUser();

  if (_currentUser != null) return _currentUser;

  try {
    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );

    /*final AuthResult authResult =
        await FirebaseAuth.instance.signInWithCredential(credential);

    final FirebaseUser user = authResult.user;
    return user; */
    final FirebaseUser user =
        (await _auth.signInWithCredential(credential)).user;
    print("Usuario autenticado: " + user.displayName);
    return user;
  } catch (error) {
    print('Erro ao autenticar usuario com google');
    return null;
  }
}

void getLoginGoogle() async {
  final FirebaseUser user = await _getUser();

  if (user == null) {
    scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text('Não foi possível fazer o login. Tente novamente!'),
      backgroundColor: Colors.red,
    ));
  }
}

nameUser() async {
  final FirebaseUser _currentUser = await _auth.currentUser();
  final FirebaseUser user = _currentUser;

  if (user == null) {
    return 'Entre ou Cadastre-se';
  } else {
    return user.displayName;
  }
}

Future<bool> signUser() async {
  final FirebaseUser _currentUser = await _auth.currentUser();
  final FirebaseUser user = _currentUser;

  if (user == null) {
    return false;
  } else {
    return true;
  }
}

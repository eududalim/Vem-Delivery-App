import 'package:flutter/material.dart';
import 'package:food_delivery/controller/controllerAuth.dart';
import 'package:food_delivery/view/pages/loginPage.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 20,
        child: ListTile(
          title: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 10.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.account_circle,
                    size: 40,
                    color: Colors.black54,
                  ),
                  Text(nameUser(),
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        letterSpacing: 2,
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}

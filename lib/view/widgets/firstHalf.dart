import 'package:flutter/material.dart';
import 'package:food_delivery/view/widgets/categories.dart';
import 'package:food_delivery/view/widgets/customAppBar.dart';
import 'package:food_delivery/view/widgets/searchBar.dart';
import 'package:food_delivery/const/titleHome.dart';

class FirstHalf extends StatefulWidget {
  const FirstHalf({
    Key key,
  }) : super(key: key);

  @override
  _FirstHalfState createState() => _FirstHalfState();
}

class _FirstHalfState extends State<FirstHalf> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 25, 0, 0),
      child: Column(
        children: <Widget>[
          CustomAppBar(),
          SizedBox(height: 30),
          title(),
          SizedBox(height: 30),
          SearchBar(),
          SizedBox(height: 45),
          TabBarCategories(),
        ],
      ),
    );
  }
}

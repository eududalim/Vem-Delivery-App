import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/bloc/cartlistBloc.dart';
import 'package:food_delivery/view/pages/cartPage.dart';
import 'package:food_delivery/model/food_item.dart';

class ButtonCart extends StatelessWidget {
  final CartListBloc bloc = BlocProvider.getBloc<CartListBloc>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.listStream,
      builder: (context, snapshot) {
        List<FoodItem> foodItems = snapshot.data;
        int length = foodItems != null ? foodItems.length : 0;

        return buildGestureDetector(length, context, foodItems);
      },
    );
  }
}

Widget buildGestureDetector(
    int length, BuildContext context, List<FoodItem> foodItems) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
    },
    child: Container(
      margin: EdgeInsets.only(right: 0),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Icon(Icons.local_grocery_store),
        Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
        Text(
          length.toString(),
          textScaleFactor: 1.3,
        )
      ]),
      padding: EdgeInsets.all(15),
      width: 90,
      decoration: BoxDecoration(
          color: Colors.yellow[800], borderRadius: BorderRadius.circular(50)),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:food_delivery/view/pages/cartPage.dart';
import 'package:food_delivery/const/themeColor.dart';
import 'package:food_delivery/model/food_item.dart';

class BottomBar extends StatelessWidget {
  final List<FoodItem> foodItems;

  BottomBar(this.foodItems);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 35, bottom: 25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Divider(
            height: 1,
            color: Colors.grey[700],
          ),
          totalAmount(foodItems),
          // persons(),
          nextButtonBar(),
        ],
      ),
    );
  }

  Container nextButtonBar() {
    return Container(
      margin: EdgeInsets.only(right: 25),
      //padding: EdgeInsets.all(25),
      // decoration: BoxDecoration(
      //     color: Themes.color, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: <Widget>[
          Text(
            "", // adicione aqui o tempo de espera estimado para o preparo. Ex: '15-25 min'
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 14,
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: Themes.color, borderRadius: BorderRadius.circular(15)),
            child: Text(
              "Concluir pedido",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Container persons() {
  return Container(
    margin: EdgeInsets.only(right: 10),
    padding: EdgeInsets.symmetric(vertical: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("Pessoas:",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            )),
        CustomPersonWidget(),
      ],
    ),
  );
}

Container totalAmount(List<FoodItem> foodItems) {
  return Container(
    margin: EdgeInsets.only(right: 10),
    padding: EdgeInsets.all(25),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Total:",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
        ),
        Text(
          "R\$ ${returnTotalAmount(foodItems)}",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
        ),
      ],
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:myapp/constant.dart';
import 'package:myapp/screens/home/components/menu_item.dart';

import 'dividing_line.dart';

class Nav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60, vertical:9),
      height : 58,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        border: Border.all(
          width: 3,
          color: kFrameColor,
        ),
      ),
      child: Row(
        children: <Widget>[
          Spacer(),
          MenuItem(title: "Accueil", press:(){}),
          Spacer(),
          Dividing_line(),
          Spacer(),
          MenuItem(title: "Articles", press:(){}),
          Spacer(),
          Dividing_line(),
          Spacer(),
          MenuItem(title: "Qui sommes-nous ?", press:(){}),
          Spacer(),
          Dividing_line(),
          Spacer(),
          MenuItem(title: "Contact", press:(){}),
          Spacer(),
          Dividing_line(),
          Spacer(),
          MenuItem(title: "S'inscrire / S'identifier", press:(){}),
          Spacer(),
          Dividing_line(),
          Spacer(),
          Image.asset(
            "assets/images/search.png",
            height: 28,
            alignment: Alignment.topCenter,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: 200,
            height: 40,
            child: TextFormField(

              decoration: InputDecoration(
                  labelText: 'Rechercher'
              ),
            ),
          ),



      ],
      ),
    );
  }
}

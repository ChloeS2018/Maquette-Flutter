import 'package:flutter/material.dart';

import 'package:myapp/constant.dart';
import 'package:myapp/screens/home/Components/footer_item.dart';


class Footer extends StatelessWidget {
  final double width;

  const Footer({Key key, this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 60),
            height: 4,
            decoration: BoxDecoration(
              color: kFrameColor,
              borderRadius: BorderRadius.circular(34),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 60, vertical:6),
            decoration: BoxDecoration(
              color : kSecondaryColor,
            ),
            child: Row(
              children: <Widget>[
                Spacer(),
                Footer_Item(title: "Politique de confidentialité", press: (){}),
                Text(
                  " - ".toUpperCase(),
                  style : TextStyle(
                    fontSize:15,
                    fontWeight: FontWeight.bold,
                    color : kTitleColor,
                  ),
                ),
                Footer_Item(title: "Mentions légales", press: (){}),
                Text(
                  " - ".toUpperCase(),
                  style : TextStyle(
                    fontSize:15,
                    fontWeight: FontWeight.bold,
                    color : kTitleColor,
                  ),
                ),
                Footer_Item(title: "Plan du site", press: (){}),
                Spacer(),

    ],
          ),
          ),

        ]
    );
  }
}
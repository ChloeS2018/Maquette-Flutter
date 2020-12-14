import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:myapp/constant.dart';
import 'package:myapp/Components/default_button.dart';
import 'package:myapp/screens/home/Components/menu_item.dart';
import 'package:google_fonts/google_fonts.dart';


class Header extends StatelessWidget {
  final double width;

  const Header({Key key, this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Container(
          margin: EdgeInsets.symmetric(horizontal: 40, vertical:6),
            decoration: BoxDecoration(color : kSecondaryColor,),
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/images/logo-evrybiody.png",
              height: 120,
              alignment: Alignment.topCenter,
            ),
            SizedBox(width:5),
            Text(
                "EvryBioDy",
                style : TextStyle(
                  fontSize:35,
                  fontWeight: FontWeight.bold,
                  color : kTitleColor,
                ),
            ),
            SizedBox(width:15),
            Container(
              padding : EdgeInsets.only(top:35),
              child: SizedBox(
                  height:60,
                  width: width*(8/20),
                  child : Text(
                    "La vulgarisation scientifique dans le domaine de la génétique",
                    style : TextStyle(
                      fontSize:20,
                      color : kTitleColor,
                    ),
                  )
              ),
            ),
            Spacer(),
            Text(
              "Suivez nous :",
              style : TextStyle(
                fontSize:18,
                color : kTitleColor,
              ),
            ),
            SizedBox(width:15),
            Image.asset(
              "assets/images/logo_fb.png",
              height: 40,
              alignment: Alignment.topCenter,
            ),
            Image.asset(
              "assets/images/logo_insta.png",
              height: 45,
              alignment: Alignment.topCenter,
            ),
          ],
        ),
      ),
       Container(
         margin: EdgeInsets.symmetric(horizontal: 60),
         height: 4,
         decoration: BoxDecoration(
          color: kFrameColor,
          borderRadius: BorderRadius.circular(34),
        ),
       ),

      ]
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/constant.dart';

class Footer_Item extends StatelessWidget {
  final String title;
  final Function press;
  const Footer_Item({
    Key key,
    this.title,
    this.press,
  }) : super(key:key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){},
        child : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child : Text(title,
              style : TextStyle(
                color: kTitleColor,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            )
        )
    );
  }
}

import'package:flutter/material.dart';
import'package:myapp/constant.dart';

class Category extends StatelessWidget {
  final String text;
  final Function press;

  const Category({Key key, this.text, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap : (){},
      child: Row(
      children: <Widget> [
        Icon(
        IconData(57432, fontFamily: 'MaterialIcons'),
        color: kTextColor,
        size: 24.0,
      ),
      Text(
         text,
         style : TextStyle(
           fontSize:15,
           color : kTextColor,
         ),
       ),
      ],
      ),
     //IconData(57432, fontFamily: 'MaterialIcons')
    );
  }
}

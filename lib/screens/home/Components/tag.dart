import 'package:flutter/material.dart';
import 'package:myapp/constant.dart';

class Tag extends StatelessWidget {
  final Function press;
  final String text;

  const Tag({Key key, this.press, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){},
        child : Text(text,
              style : TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
        );
  }
}

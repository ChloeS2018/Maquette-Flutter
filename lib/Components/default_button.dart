import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/constant.dart';


class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;
  final double width;

  const DefaultButton({
    Key key,
    this.text,
    this.press,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: FlatButton(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            color: kSecondaryColor,
            onPressed: () {},
            child: Text(
              text,
              style : TextStyle(
                color: kTitleColor,
                fontSize: 15,
              ),
            )
          ),
    );
  }
}

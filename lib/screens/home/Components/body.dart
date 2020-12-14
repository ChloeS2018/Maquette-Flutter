import 'package:flutter/material.dart';
import 'package:myapp/screens/home/Components/section_left.dart';
import 'package:myapp/screens/home/Components/section_right.dart';

class Body extends StatelessWidget {
  final double width;
  const Body({Key key, this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Section_left(width : width),
        Section_right(width :width),
      ],
    );
  }
}

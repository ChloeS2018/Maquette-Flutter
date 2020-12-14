import 'package:flutter/material.dart';

import '../../../constant.dart';


class Dividing_line extends StatelessWidget {
  const Dividing_line({
    Key key,
  }) : super(key:key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      width: 3,
        child: Container(
        decoration: BoxDecoration(
          color: kFrameColor,
        ),
        ),
    );
  }
}
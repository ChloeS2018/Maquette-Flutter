import 'package:flutter/material.dart';
import 'package:myapp/constant.dart';
import 'package:myapp/screens/home/Components/body.dart';
import 'package:myapp/screens/home/Components/footer.dart';
import 'package:myapp/screens/home/Components/header.dart';
import 'package:myapp/screens/home/Components/nav.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    //This size provide us total height and width of our screen
      return Scaffold(
        body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: kSecondaryColor,
          ),
        child :Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Header(width : size.width),
          Nav(),
          Body(width : size.width),
          Footer(width : size.width),

        ],
        ),
        )

        //Container(
        /*height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: kSecondaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Header(width : size.width),
            Nav(),
            Spacer(),
            //take 1 tier
            Body(width : size.width),
            Spacer(),
            Footer(width : size.width),
          ]
        )*/
        )
      );
  }
}
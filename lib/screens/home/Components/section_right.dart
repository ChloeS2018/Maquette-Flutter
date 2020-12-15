import 'package:flutter/material.dart';
import 'package:myapp/constant.dart';
import 'package:myapp/Components/default_button.dart';
import 'package:myapp/screens/home/Components/category.dart';
import 'package:myapp/screens/home/Components/tag.dart';

class Section_right extends StatelessWidget {
  final double width;
  const Section_right({Key key, this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double newWidth = (4/20)*width;
    return Container(
      width : newWidth,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        border: Border.all(
          width: 3,
          color: kFrameColor,
        ),
      ),
      child : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Text(
            "Pour ne rater aucun article, inscrivez-vous à la newsletter :",
            style : TextStyle(
              fontSize:15,
              fontWeight: FontWeight.bold,
              color : kTextColor,
            ),
          ),
          SizedBox(
            height : 10,
          ),
          Container(
            width: 200,
            height: 30,
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: kFrameColor,
              ),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'Entrez votre adresse mail'
              ),
            ),
          ),
      Container(
        margin: EdgeInsets.only(left: (newWidth-160), top: 5),
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            width: 2,
            color: kFrameColor,
          ),
        ),
        child: DefaultButton(
          text: "Je m'abonne",
          press: (){},
          width: newWidth,
        ),
      ),
          SizedBox(
            height : 15,
          ),
          Text(
            "Catégories :".toUpperCase(),
            style : TextStyle(
              fontSize:15,
              fontWeight: FontWeight.bold,
              color : kTextColor,
            ),
          ),
          Category(text: "Bases de la génétique", press : (){}),
          Category(text: "Histoire de la génétique", press : (){}),
          Category(text: "Techniques d'analyse", press : (){}),
          Category(text: "Maladies génétiques", press : (){}),
          Category(text: "Biotechnologies", press : (){}),
          Category(text: "Bio-informatique", press : (){}),
          SizedBox(
            height : 15,
          ),
          Text(
            "Nuage de tags :".toUpperCase(),
            style : TextStyle(
              fontSize:15,
              fontWeight: FontWeight.bold,
              color : kTextColor,
            ),
          ),
          Column (
          children : <Widget> [
            Row(
              children: <Widget> [
                Tag(press : (){}, text : 'tag1'),
                Text(" - "),
                Tag(press : (){}, text : 'tag2'),
                Text(" - "),
                Tag(press : (){}, text : 'tag3'),
                Text(" - "),
                Tag(press : (){}, text : 'tag4'),
                Text(" - "),
                Tag(press : (){}, text : 'tag5'),
                Text(" - "),
                ],
    ),
            Row(
              children: <Widget> [
                 Tag(press : (){}, text : 'tag6'),
                Text(" - "),
                Tag(press : (){}, text : 'tag7'),
                Text(" - "),
                Tag(press : (){}, text : 'tag8'),
                Text(" - "),
                Tag(press : (){}, text : 'tag9'),
                Text(" - "),
                Tag(press : (){}, text : 'tag10'),
              ],
            )
    ]
            ),
    ]
          ),
      );
  }
}

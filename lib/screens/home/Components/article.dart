import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/constant.dart';

class Article extends StatelessWidget {
  final String title;
  final double width;
  final String author;
  final String image_link;
  final DateTime date;
  final String tags;
  final String summery;
  final Function read_more;
  const Article({
    Key key,
    this.title,
    this.width,
    this.author,
    this.date,
    this.tags,
    this.summery,
    this.read_more,
    this.image_link,
  }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width:width,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        border: Border.all(
          width: 3,
          color: kFrameColor,
        ),
      ),
      child:Row(
        children: <Widget>[
          Container(
            child :Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text(
                  title.toUpperCase(),
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(
                  (author + " - " + date.toString()),
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  tags,
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Résumé :",
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height:160,
                  width: width-500,
                          child : Text(
                            summery,
                            style: TextStyle(
                              color: kTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                        ),
                      ),


                InkWell(
                    onTap: (){},
                    child : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child : Text(
                          "... Lire la suite",
                          style : TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                    )
                ),
              ],
          ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              "assets/images/" + image_link,
              height: 250,
              width: 450,
              alignment: Alignment.topCenter,
            ),
          ),



        ],
      ),

    );
  }
}

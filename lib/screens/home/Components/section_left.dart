import 'package:flutter/material.dart';
import 'package:myapp/screens/home/Components/article.dart';

class Section_left extends StatelessWidget {
  final double width;
  const Section_left({Key key, this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double newWidth = (16/20)*width-180;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60, vertical:6),
      width: newWidth,
      child: Column(
      children: <Widget>[
        Article(
            width : newWidth,
            title : "title1",
            author : "author1",
            date : DateTime.utc(1989, DateTime.november, 9),
            tags : "tag1, tag2, tag3",
            summery: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit",
            read_more: (){},
            image_link: "image1.jpg",
        ),
        Article(
          width : newWidth,
          title : "title2",
          author : "author2",
          date : DateTime.utc(1989, DateTime.november, 9),
          tags : "tag1, tag2, tag3",
          summery: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit",
          read_more: (){},
          image_link: "image2.png",
        ),
       ],
      ),
    );
  }
}

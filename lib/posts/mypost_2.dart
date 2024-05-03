import 'package:flutter/material.dart';
import 'package:tiktok/util/post_template.dart';

class MyPost2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'randomUser',
      caption: "let's gooo",
      numberOfLikes: '5M',
      numberOfComments: '417.9K',
      numberOfSaves: '200K',
      numberOfShares: '12K',
      userPost: Container(
        color: Colors.lightBlue,
      ),
    );
  }
}

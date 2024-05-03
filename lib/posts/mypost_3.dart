import 'package:flutter/material.dart';
import 'package:tiktok/util/post_template.dart';

class MyPost3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        username: 'unknown',
        caption: '',
        numberOfLikes: '324k',
        numberOfComments: '50K',
        numberOfSaves: '23K',
        numberOfShares: '10K',
        userPost: Container(
          color: Colors.pink,
        ));
  }
}

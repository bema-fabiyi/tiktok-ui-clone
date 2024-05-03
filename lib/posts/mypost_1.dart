import 'package:flutter/material.dart';
import 'package:tiktok/util/post_template.dart';

class MyPost1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        username: 'bema',
        caption: 'tiktok ui challenge',
        numberOfLikes: '3.2M',
        numberOfComments: '337.8K',
        numberOfSaves: '537.7K',
        numberOfShares: '18K',
        userPost: Container(
          color: Colors.blueGrey,
        ));
  }
}

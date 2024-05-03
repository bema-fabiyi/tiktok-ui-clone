import 'package:flutter/material.dart';
import 'package:tiktok/util/buttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostTemplate extends StatelessWidget {
  final String username;
  final String caption;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfSaves;
  final String numberOfShares;
  final userPost;

  const PostTemplate(
      {required this.username,
      required this.caption,
      required this.numberOfLikes,
      required this.numberOfComments,
      required this.numberOfSaves,
      required this.numberOfShares,
      required this.userPost});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // user post (at the very back)
          userPost,
          // user name and caption
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: const Alignment(-1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '@$username',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 6),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: caption),
                        const TextSpan(
                            text: ' #fyp #flutter',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // buttons
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: const Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                      icon: const Icon(Icons.favorite, size: 35),
                      number: numberOfLikes),
                  MyButton(
                      icon: const Icon(
                        Icons.chat_bubble_rounded,
                        size: 35,
                      ),
                      number: numberOfComments),
                  MyButton(
                      icon: const Icon(
                        Icons.bookmark,
                        size: 35,
                      ),
                      number: numberOfSaves),
                  MyButton(
                      icon: const Icon(FontAwesomeIcons.share, size: 35),
                      number: numberOfShares),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

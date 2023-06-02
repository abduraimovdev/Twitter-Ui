import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../service/text.dart';

class MyPost extends StatelessWidget {
  const MyPost({
    super.key,
    required this.currentWidth,
    required this.profileImage,
    required this.name,
    required this.username,
    required this.title,
    required this.postImage,
  });
  final String profileImage;
  final String name;
  final String username;
  final String title;
  final String postImage;

  final double currentWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Name
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          profileImage,
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const TextSpan(
                              text: "\u{1F499}",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        username,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.more_horiz,
                size: 16,
                color: Colors.grey.withOpacity(0.8),
              ),
            ],
          ),

          // Name Menu End
          const SizedBox(height: 25),
          Container(
            width: double.infinity,
            height: 70,
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: SelectionArea(
              child: MyText(
                text: title,
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Container(
            width: double.infinity,
            height: currentWidth > 500 ? (currentWidth > 700 ? 750 : 550) : 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  postImage,
                ),
                fit: BoxFit.fitWidth,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                color: Colors.grey,
              ),
              children: [
                TextSpan(
                  text: "8:49 AM ･ 2023. 4. 24. ･ Просмотров: ",
                ),
                TextSpan(
                  text: "15.9K",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Divider(
            thickness: 0.2,
            color: Colors.grey,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.grey.shade500,
              ),
              children: const [
                TextSpan(
                  text: "16",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: " ретвита (-ов)"),
                TextSpan(
                  text: " 1",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: " цитата"),
                TextSpan(
                  text: " 153",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: " отметки(-ок) «Нравится» Закладок: ",
                ),
                TextSpan(
                  text: " 43",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          const Divider(),

          Row(
            children: [
              const Spacer(
                flex: 2,
              ),
              const Icon(
                CupertinoIcons.chat_bubble,
              ),
              const Spacer(
                flex: 2,
              ),
              Image(
                image: const AssetImage(
                  "assets/images/retweet.png",
                ),
                width: 25,
                height: 25,
                color: Colors.grey.shade800,
              ),
              const Spacer(
                flex: 2,
              ),
              const Icon(CupertinoIcons.heart),
              const Spacer(
                flex: 2,
              ),
              const Icon(CupertinoIcons.bookmark),
              const Spacer(
                flex: 2,
              ),
              const Icon(Icons.share_outlined),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
          const Divider(
            thickness: 2,
            height: 30,
          ),

          // if (currentWidth > 600)
          Container(
            height: 70,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(234, 250, 254, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  CupertinoIcons.share,
                  size: 30,
                ),
                Flexible(
                  child: Text(
                    "  Поделитесь твитом с кем\n угодно, даже если у этого человека нет \nучетной записи Twitter",
                    maxLines: 3,
                  ),
                ),
                Icon(
                  Icons.close,
                  size: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

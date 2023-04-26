import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/ic_twitter.png"),
                    ),
                  ),
                ),
                const Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
                const Icon(
                  Icons.search,
                  size: 30,
                ),
                const Icon(
                  CupertinoIcons.bell,
                  size: 25,
                ),
                const Icon(
                  Icons.email_outlined,
                  size: 25,
                ),
                const Icon(
                  Icons.bookmark_border_rounded,
                  size: 25,
                ),
                const Icon(
                  Icons.article_outlined,
                  size: 25,
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/138-1388174_login-account-icon.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Icon(
                  Icons.more_horiz_outlined,
                  size: 30,
                ),
                const Divider(),
              ],
            ),
          ),
          Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.only(bottom: 30),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bottom.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

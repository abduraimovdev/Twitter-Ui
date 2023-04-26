import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_res/pages/widgets.dart';
import 'package:ui_res/service/text.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Row(
          children: [
            if (currentWidth >= 600)
              const Expanded(
                flex: 2,
                child: MyMenu(),
              ),
            Expanded(
              flex: 16,
              child: Container(
                height: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                        left: 10,
                        right: 10,
                      ),
                      child: Row(
                        children: const [
                          Expanded(
                            flex: 1,
                            child: Icon(
                              CupertinoIcons.arrow_left,
                            ),
                          ),
                          Expanded(
                            flex: 25,
                            child: Center(
                              child: Text(
                                "Ветка",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            MyPost(currentWidth: currentWidth),
                            MyPost(currentWidth: currentWidth),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyPost extends StatelessWidget {
  const MyPost({
    super.key,
    required this.currentWidth,
  });

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
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/brat.jpg',
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
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Mike Rydstorm",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: "\u{1F499}",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "@RydMike",
                        style: TextStyle(
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
            child: const SelectionArea(
              child: MyText(
                text:
                    '''Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.''',
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Container(
            width: double.infinity,
            height: currentWidth > 500 ? 550 : 350,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                  "assets/images/center_image.jpg",
                ),
                fit: BoxFit.fitWidth,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),

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

          Divider(),

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
            height: 50,
          ),
        ],
      ),
    );
  }
}

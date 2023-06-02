import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_res/pages/post.dart';
import 'package:ui_res/pages/menu.dart';

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
      body: Row(
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
                      children: [
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {},
                            child: Icon(
                              CupertinoIcons.arrow_left,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 10,
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
                          MyPost(
                            currentWidth: currentWidth,
                            profileImage: "assets/images/brat.jpg",
                            name: "Mike Rydstorm",
                            username: "@RydMike",
                            title:
                                "Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.",
                            postImage: "assets/images/center_image.jpg",
                          ),
                          MyPost(
                            currentWidth: currentWidth,
                            profileImage: "assets/images/brat.jpg",        
                            name: "Mike Rydstorm",                
                            username: "@RydMike",
                            title:
                                ".",
                            postImage: "assets/images/center_image.jpg",
                          ),
                          MyPost(
                            currentWidth: currentWidth,
                            profileImage: "assets/images/brat.jpg",
                            name: "Mike Rydstorm",
                            username: "@RydMike",
                            title:
                                "Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.Oops...  #Futter Searc Bar ma e an appearance in FlexColorScheme 7.1 beta in Themes Playground 7.1. This version requires min #FlutterDev 3.10.0 beta channel.",
                            postImage: "assets/images/center_image.jpg",
                          ),
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
    );
  }
}

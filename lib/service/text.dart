import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  const MyText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      selectionRegistrar: SelectionContainer.maybeOf(context),
      selectionColor: const Color(0xAF6694e8),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        // ignore: prefer_const_constructors
        style: TextStyle(fontSize: 16),
        children: sorted(text),
      ),
    );
  }
}

List<TextSpan> sorted(String text) {
  List<String> textList = text.trim().split(" ");
  textList = textList.where((element) => element != "").toList();
  textList = textList.map((element) => element.trim()).toList();
  textList = textList.map((element) => '$element ').toList();

  List<TextSpan> widgetList = [];
  for (var item in textList) {
    if (item[0] == "#") {
      widgetList.add(
        TextSpan(
          style: const TextStyle(
            color: Colors.blue,
          ),
          text: item,
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              debugPrint(item);
            },
        ),
      );
    } else {
      widgetList.add(
        TextSpan(
          style: const TextStyle(
            color: Colors.black,
          ),
          text: item,
        ),
      );
    }
  }
  return widgetList;
}

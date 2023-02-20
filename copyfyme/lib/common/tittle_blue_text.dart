import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TitleText extends StatelessWidget {
  final String text;
  const TitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Color(0XFF0D62C5), fontSize: 20, fontWeight: FontWeight.w500
          // decoration: TextDecoration.underline,
          // decorationStyle: TextDecorationStyle.solid,
          // decorationThickness: 2,
          ),
    );
  }
}

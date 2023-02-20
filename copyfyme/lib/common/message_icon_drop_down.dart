import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MessageDropDownWithIcon extends StatelessWidget {
  final String text;
  // final Function() iconOnpreesed;
  MessageDropDownWithIcon({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          // 40,
          MediaQuery.of(context).size.height * 0.056,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Color(0xff168FDE)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 20),
        child: Row(
          children: [
            Text(
              text,

              // "Common Information",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            Spacer(),
            Icon(
              Icons.colorize_outlined,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

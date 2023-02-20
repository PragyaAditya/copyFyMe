import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MessageBlueContainer extends StatelessWidget {
  final String text;

  MessageBlueContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          // 40,
          MediaQuery.of(context).size.height * 0.056,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Color(0xff168FDE)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Text(
              text,

              // "Common Information",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}

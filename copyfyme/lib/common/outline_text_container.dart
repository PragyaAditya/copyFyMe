import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class OutlineTextContainer extends StatelessWidget {
  final Function() onpressed;
  final String text;
  const OutlineTextContainer(
      {super.key, required this.onpressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        width:
            //  184,

            MediaQuery.of(context).size.width * 0.5,
        padding: EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
        decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xff168FDE),
            ),
            borderRadius: BorderRadius.circular(5)),
        child: Text(
          textAlign: TextAlign.center,
          text,
          style: TextStyle(fontSize: 16, color: Color(0xff168FDE)),
        ),
      ),
    );
  }
}

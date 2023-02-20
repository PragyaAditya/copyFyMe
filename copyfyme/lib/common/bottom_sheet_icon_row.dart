import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSheetIconRow extends StatelessWidget {
  final Function() onpressed;
  final String image;
  final String text;
  const BottomSheetIconRow(
      {super.key,
      required this.text,
      required this.onpressed,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            enableFeedback: false,
            onPressed: () {},
            icon: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.07,
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      fit: BoxFit.contain, image: AssetImage(image))),
            )),
        Text(
          text,
          style: TextStyle(color: Color(0xff454343)),
        )
      ],
    );
  }
}

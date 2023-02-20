import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GreyOutlineDropDownWithIcon extends StatelessWidget {
  final String text;
  final Function() iconOnpreesed;
  GreyOutlineDropDownWithIcon(
      {super.key, required this.iconOnpreesed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      // MediaQuery.of(context).size.height * 0.056,
      // width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color(0xffE7E5E5),
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            SizedBox(
              width: 9,
            ),
            Text(
              text,

              // "Common Information",
              style: TextStyle(color: Color(0xff909090), fontSize: 15),
            ),
            Spacer(),
            IconButton(
                onPressed: iconOnpreesed,
                //  () {
                //   setState(() {
                //     showCommonCon = !showCommonCon;
                //   });
                // },
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Color(0xffC5C5C5),
                )),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}

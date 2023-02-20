import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DropDownWithIcon extends StatelessWidget {
  final String text;
  final Function() iconOnpreesed;
  DropDownWithIcon(
      {super.key, required this.iconOnpreesed, required this.text});

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
            Spacer(),
            Container(
                height: 17,
                width: 17,
                decoration: BoxDecoration(
                    // color: Colors.white,
                    // border: Border.all(
                    //     color: Color.fromARGB(255, 224, 223, 223)),
                    // borderRadius: BorderRadius.circular(5),
                    ),
                child: SvgPicture.asset('assets/pen_icon.svg')),
            // Icon(
            //   Icons.colorize_outlined,
            //   color: Colors.white,
            // ),
            IconButton(
                onPressed: iconOnpreesed,
                //  () {
                //   setState(() {
                //     showCommonCon = !showCommonCon;
                //   });
                // },
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}

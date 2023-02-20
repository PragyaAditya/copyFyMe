import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonOutline extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color color;
  final Color textcolor;
  const ButtonOutline(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.color,
      required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.43,
      height: MediaQuery.of(context).size.height * 0.049,
      child: Container(
          decoration: BoxDecoration(
            // color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5),
            // boxShadow: [
            //   const BoxShadow(
            //     color: Color(0xFFBEBEBE),
            //     offset: Offset(10, 10),
            //     blurRadius: 10,
            //     spreadRadius: 2,
            //   ),
            //   const BoxShadow(
            //     color: Colors.white,
            //     offset: Offset(-10, -10),
            //     blurRadius: 5,
            //     spreadRadius: 8,
            //   ),
            // ]
          ),
          child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  elevation: 0,
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: color),
                      borderRadius: BorderRadius.circular(20))),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 14,
                    color: textcolor,
                    fontWeight: FontWeight.w500),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ))),
    );
    ;
  }
}

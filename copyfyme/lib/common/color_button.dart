import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ColorButton extends StatelessWidget {
  final String text;
  final Function() onpressed;
  ColorButton({super.key, required this.text, required this.onpressed});

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
              onPressed: onpressed,
              style: ElevatedButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  elevation: 0,
                  primary: Color(0xff0D62C5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ))),
    );
    ;
  }
}

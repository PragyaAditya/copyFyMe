import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OutlineContainer extends StatelessWidget {
  final String text;
  final String notext;
  final double width;
  final double height;

  const OutlineContainer(
      {super.key,
      required this.text,
      required this.notext,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * height,
      //  0.09,
      width: MediaQuery.of(context).size.width * width,
      // 0.29,
      decoration: BoxDecoration(
        color: Colors.white,
        // boxShadow: [
        //   const BoxShadow(
        //     color: Color(0xFFBEBEBE),
        //     offset: Offset(1, 1),
        //     blurRadius: 1,
        //     spreadRadius: 1,
        //   ),
        // ],
        border: Border.all(color: Color.fromARGB(255, 224, 223, 223)),
        borderRadius: BorderRadius.circular(5),
        // border: Border.all(color: Color(0xff909090)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(color: Color(0xff909090)),
            ),
            Text(
              notext,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

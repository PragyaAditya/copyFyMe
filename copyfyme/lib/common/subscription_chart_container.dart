import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubscriptionChartCOntainer extends StatelessWidget {
  final String text;

  // final double width;
  // final double height;

  const SubscriptionChartCOntainer({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          // 75,
          MediaQuery.of(context).size.height * 0.11,
      //  0.09,
      width:
          // 160,
          MediaQuery.of(context).size.width * 0.45,
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
        padding: const EdgeInsets.only(
          top: 5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(color: Color(0xff909090)),
            ),
            // SvgPicture.asset(
            //   'assets/TradingRelatedImages.svg',
            //   height: 45,
            //   width: 100,
            // )
            // Container(
            //     height: 45,
            //     width: 100,
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       border: Border.all(color: Color.fromARGB(255, 224, 223, 223)),
            //       borderRadius: BorderRadius.circular(5),
            //     ),
            //     child: SvgPicture.asset('assets/subsinfochart.svg'))
            Container(
              height: 45,
              // MediaQuery.of(context).size.height * 0.08,
              width: 100,
              //  MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                  // color: Colors.black,
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image:
                          AssetImage('assets/Trading Related Images 1.png'))),
            ),
          ],
        ),
      ),
    );
  }
}

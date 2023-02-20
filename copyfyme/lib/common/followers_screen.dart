import 'package:copyfyme/common/followers_info_message.dart';
import 'package:copyfyme/common/outline_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FollowerScreen extends StatefulWidget {
  const FollowerScreen({super.key});

  @override
  State<FollowerScreen> createState() => _FollowerScreenState();
}

class _FollowerScreenState extends State<FollowerScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              chartCon(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              row(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              FollowerInfoMessage()
            ],
          ),
        ),
      ),
    );
  }

  Widget row() => Container(
        width: MediaQuery.of(context).size.width * 0.92,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OutlineContainer(
                height: 0.09, width: 0.29, text: "Followers", notext: '5'),
            OutlineContainer(
              text: "Growth",
              notext: '3',
              height: 0.09,
              width: 0.29,
            ),
            OutlineContainer(
              text: "Closed Profit",
              notext: '\$0.00',
              height: 0.09,
              width: 0.29,
            )
          ],
        ),
      );
  Widget chartCon() => Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color.fromARGB(255, 224, 223, 223)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: SvgPicture.asset('assets/Monthly Fees.svg'));
  //  Container(
  //       height: MediaQuery.of(context).size.height * 0.11,
  //       width: MediaQuery.of(context).size.width,
  //       decoration: BoxDecoration(
  //           // color: Colors.amber,
  //           // border: Border.all(color: Color(0xff909090)),
  //           image: DecorationImage(
  //               fit: BoxFit.fitWidth,
  //               image: AssetImage('assets/Monthly Fees.png'))),
  //     );
}

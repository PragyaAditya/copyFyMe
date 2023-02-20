import 'package:copyfyme/common/followers_info_message.dart';
import 'package:copyfyme/common/outline_container.dart';
import 'package:copyfyme/common/subscription_chart_container.dart';
import 'package:copyfyme/common/subscription_info_message.dart';
import 'package:copyfyme/subscription_vm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  bool showMessagePage = false;
  setMessagePageFunction(bool value) {
    setState(() {
      showMessagePage = value;
    });
  }

  @override
  // SubscriptionVm subscriptionVm = Get.find();
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
              // subscriptionVm.Showmesage == false ?
              // fristConRow(),
              showMessagePage ? messagePage() : xyz(),
              //: Container(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.013,
              ),
              SubscriptionInfoMessage(
                changeMessagePage: setMessagePageFunction,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget messagePage() => Column(
        children: [
          FristrowConMessage(),
          // : Container(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          // subscriptionVm.Showmesage == false ?
          // secondRow(),
          secondRowmessage(),
        ],
      );
  Widget xyz() => Column(
        children: [
          fristConRow(),
          // FristrowConMessage(),
          // : Container(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          // subscriptionVm.Showmesage == false ?
          secondRow(),
          // secondRowmessage(),
        ],
      );

  Widget secondRow() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlineContainer(
              text: 'Trading Profit',
              notext: '\$4.95',
              height: 0.11,
              width: 0.45),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          OutlineContainer(
              text: 'Trading Profit',
              notext: '\$4.95',
              height: 0.11,
              width: 0.45),
        ],
      );
  Widget secondRowmessage() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlineContainer(
              text: 'Trading Profit',
              notext: '\$4.95',
              height: 0.09,
              width: 0.3),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          OutlineContainer(
              text: 'Copied Positions', notext: '1', height: 0.09, width: 0.3),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          OutlineContainer(
              text: 'Paid fees', notext: '\$0.00', height: 0.09, width: 0.3),
        ],
      );
  Widget fristConRow() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SubscriptionChartCOntainer(text: 'Monthly Trading Profit'),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          OutlineContainer(
              text: 'Trading Profit',
              notext: '\$4.95',
              height: 0.11,
              width: 0.45),
        ],
      );
  Widget FristrowConMessage() => Container(
        height:
            // 75,
            MediaQuery.of(context).size.height * 0.11,
        //  0.09,
        // width:
        //     // 160,
        //     MediaQuery.of(context).size.width * 0.45,
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
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                width: 120,
                // color: Colors.amber,
                child: Text(
                  textAlign: TextAlign.center,
                  'Monthly \nTrading Profit',
                  style: TextStyle(
                    color: Color(0xff909090),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 55,
                  // MediaQuery.of(context).size.height * 0.08,
                  width: 130,
                  // MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                      // color: Colors.black,
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(
                              'assets/Trading Related Images 1.png'))),
                  // child: SvgPicture.asset('assets/subsMessga.svg'),
                ),
              ),
            ],
          ),
        ),
      );
}

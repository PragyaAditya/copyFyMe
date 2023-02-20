import 'package:copyfyme/common/button_outline.dart';
import 'package:copyfyme/common/information_container.dart';
import 'package:copyfyme/common/message_info_container.dart';
import 'package:copyfyme/common/subscription_information_container.dart';
import 'package:copyfyme/subscription_vm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SubscriptionInfoMessage extends StatefulWidget {
  final Function changeMessagePage;
  const SubscriptionInfoMessage({super.key, required this.changeMessagePage});

  @override
  State<SubscriptionInfoMessage> createState() =>
      _SubscriptionInfoMessageState();
}

class _SubscriptionInfoMessageState extends State<SubscriptionInfoMessage> {
  bool showInformation = true;
  bool showMessage = false;
  SubscriptionVm subscriptionVm = Get.put(SubscriptionVm());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.94,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xff909090),
              blurRadius: 2,
            )
            // const BoxShadow(
            //   color: Color(0xFFBEBEBE),
            //   offset: Offset(1, 1),
            //   blurRadius: 3,
            //   spreadRadius: 3,
            // ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            btns(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            infomessageCon()
          ],
        ),
      ),
    );
  }

  Widget infomessageCon() {
    if (showInformation == true) {
      return SubscriptionInformationContainer();
    } else if (showMessage == true) {
      return MessageContainer();
    }
    return Container();
  }

  Widget btns() => Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            showInformation == true
                ? ButtonOutline(
                    text: "Information",
                    onPressed: () {
                      widget.changeMessagePage(false);
                      setState(() {
                        showInformation = true;
                        showMessage = false;
                        subscriptionVm.showInfor = showInformation;
                        subscriptionVm.Showmesage = showMessage;
                      });

                      print('tap info');
                      print(subscriptionVm.showInfor);
                      print(subscriptionVm.Showmesage);
                    },
                    color: Color(0xff168FDE),
                    textcolor: Color(0xff168FDE))
                : ButtonOutline(
                    text: "Information",
                    onPressed: () {
                      widget.changeMessagePage(false);
                      setState(() {
                        showInformation = true;
                        showMessage = false;
                        subscriptionVm.showInfor = showInformation;
                        subscriptionVm.Showmesage = showMessage;
                      });
                      print('tap mess');
                      print(subscriptionVm.showInfor);
                      print(subscriptionVm.Showmesage);
                    },
                    color: Color(0xff909090),
                    textcolor: Color(0xff909090)),
            showMessage == true
                ? ButtonOutline(
                    text: "Message",
                    onPressed: () {
                      widget.changeMessagePage(true);
                      setState(() {
                        showInformation = false;
                        showMessage = true;
                        subscriptionVm.showInfor = showInformation;
                        subscriptionVm.Showmesage = showMessage;
                      });

                      print('tap info');
                      print(subscriptionVm.showInfor);
                      print(subscriptionVm.Showmesage);
                    },
                    color: Color(0xff168FDE),
                    textcolor: Color(0xff168FDE))
                : ButtonOutline(
                    text: "Message",
                    onPressed: () {
                      widget.changeMessagePage(true);
                      setState(() {
                        showInformation = false;
                        showMessage = true;
                        subscriptionVm.showInfor = showInformation;
                        subscriptionVm.Showmesage = showMessage;
                      });
                      print('tap mess');
                      print(subscriptionVm.showInfor);
                      print(subscriptionVm.Showmesage);
                    },
                    color: Color(0xff909090),
                    textcolor: Color(0xff909090))
          ],
        ),
      );
}

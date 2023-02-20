import 'package:copyfyme/common/configuration_icon_container.dart';
import 'package:copyfyme/common/message_blue_container.dart';
import 'package:copyfyme/common/message_icon_drop_down.dart';
import 'package:copyfyme/common/state_row.dart';
import 'package:copyfyme/common/text_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MessageContainer extends StatefulWidget {
  const MessageContainer({super.key});

  @override
  State<MessageContainer> createState() => _MessageContainerState();
}

class _MessageContainerState extends State<MessageContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.4,
      child: SingleChildScrollView(
        child: Column(
          children: [
            internalMeesage(),
            thisMessageIsEmpty(),
            infoCon(),
            stateRow(),
            SizedBox(
              height: 1,
            ),
            registerdRow(),
            clientCon(),
            profileRow(),
            configurationCon()
          ],
        ),
      ),
    );
  }

  Widget configurationCon() =>
      ConfigurationIconContainer(text: "Configuration");
  Widget clientCon() => MessageBlueContainer(text: "Client");
  Widget profileRow() => TextRow(text: 'Profile', Stext: 'Client Profile #13');
  Widget infoCon() => MessageBlueContainer(text: "Info");
  Widget thisMessageIsEmpty() => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Color(0xff909090), blurRadius: 2)]),
        height: MediaQuery.of(context).size.height * 0.09,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: Text(
            'This Massage is Empty',
            style: TextStyle(color: Color(0xff454343), fontSize: 15),
          ),
        ),
      );
  Widget stateRow() => StateRow();
  Widget registerdRow() =>
      TextRow(text: 'Registered', Stext: '10/7/22, 10:46:56 AM');

  // Widget thisMessageIsEmpty() => Container(
  //       decoration: BoxDecoration(
  //           color: Colors.white,
  //           boxShadow: [BoxShadow(color: Color(0xff909090), blurRadius: 2)]),
  //       height: MediaQuery.of(context).size.height * 0.09,
  //       width: MediaQuery.of(context).size.width,
  //       child: Padding(
  //         padding: const EdgeInsets.only(left: 10, top: 15),
  //         child: Text(
  //           'This Massage is Empty',
  //           style: TextStyle(color: Color(0xff454343), fontSize: 15),
  //         ),
  //       ),
  //     );
  Widget internalMeesage() => MessageDropDownWithIcon(text: 'Internal Message');
}

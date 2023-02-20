import 'package:copyfyme/common/drop_down_container_withicon.dart';
import 'package:copyfyme/common/drop_down_without_icon.dart';
import 'package:copyfyme/common/text_row.dart';
import 'package:copyfyme/common/widget_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SubscriptionInformationContainer extends StatefulWidget {
  const SubscriptionInformationContainer({super.key});

  @override
  State<SubscriptionInformationContainer> createState() =>
      _SubscriptionInformationContainerState();
}

class _SubscriptionInformationContainerState
    extends State<SubscriptionInformationContainer> {
  bool showCommonCon = false;
  bool showSubscription = false;
  bool showCorrection = false;
  bool showRiskManagement = false;
  @override
  Widget build(BuildContext context) {
    return
        // Container(
        //   height: MediaQuery.of(context).size.height * 0.7,
        //   width: MediaQuery.of(context).size.width,
        //   child: SingleChildScrollView(
        //     child:
        SingleChildScrollView(
      child: Column(
        children: [
          commoninformationCon(),
          commonCon(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.003),
          subscriptionStrategyDropDown(),
          ScommonCon(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.003),
          correctionDropDown(),
          CcommonCon(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.003),
          riskDropDown(),
          RcommonCon(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.003),
        ],
        //   ),
        // ),
      ),
    );
  }

  Widget commoninformationCon() => DropDownWithIcon(
      iconOnpreesed: () {
        setState(() {
          showCommonCon = !showCommonCon;
        });
      },
      text: 'Common Information');
  Widget subscriptionStrategyDropDown() => DropDownWithoutIcon(
      iconOnpreesed: () {
        setState(() {
          showSubscription = !showSubscription;
        });
      },
      text: 'Subscription Strategy');
  Widget correctionDropDown() => DropDownWithoutIcon(
      iconOnpreesed: () {
        setState(() {
          showCorrection = !showCorrection;
        });
      },
      text: 'Correction');
  Widget riskDropDown() => DropDownWithoutIcon(
      iconOnpreesed: () {
        setState(() {
          showRiskManagement = !showRiskManagement;
        });
      },
      text: 'Risk Management');

  Widget commonCon() => showCommonCon == true
      ? Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          child: commonInformationRow(),
        )
      : Container();
  Widget ScommonCon() => showSubscription == true
      ? Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          child: commonInformationRow(),
        )
      : Container();
  Widget CcommonCon() => showCorrection == true
      ? Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          child: commonInformationRow(),
        )
      : Container();
  Widget RcommonCon() => showRiskManagement == true
      ? Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          child: commonInformationRow(),
        )
      : Container();
  Widget commonInformationRow() => Column(
        children: [
          TextRow(
            text: "Direction",
            Stext: 'All',
          ),
          SizedBox(
            height: 1,
          ),
          TextRow(
            text: 'Symbols',
            Stext: '*',
          ),
          SizedBox(
            height: 1,
          ),
          TextRow(
            text: 'Minimum lots',
            Stext: '-',
          ),
          SizedBox(
            height: 1,
          ),
          TextRow(
            text: 'Maximum lots',
            Stext: '-',
          ),
          // IconRow()
        ],
      );
}

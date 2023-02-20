import 'package:copyfyme/common/drop_down_container_withicon.dart';
import 'package:copyfyme/common/drop_down_without_icon.dart';
import 'package:copyfyme/common/text_row.dart';
import 'package:copyfyme/common/widget_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InformationContainer extends StatefulWidget {
  const InformationContainer({super.key});

  @override
  State<InformationContainer> createState() => _InformationContainerState();
}

class _InformationContainerState extends State<InformationContainer> {
  bool showCommonCon = false;
  bool showPersonalDetailsCon = false;
  bool showStrategy = false;
  bool showFinance = false;
  bool showOffers = false;
  @override
  Widget build(BuildContext context) {
    return
        // Container(
        //   height: MediaQuery.of(context).size.height * 0.7,
        //   width: MediaQuery.of(context).size.width,
        //   child: SingleChildScrollView(
        //     child:
        Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            commoninformationCon(),
            commonCon(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.003),
            personalDetailAccountDropDown(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.003),
            pcommonCon(),
            strategyDropDown(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.003),
            ScommonCon(),
            FinanceDropDown(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.003),
            FcommonCon(),
            offerDropDown(),
            OcommonCon()
          ],
          //   ),
          // ),
        ),
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
  Widget personalDetailAccountDropDown() => DropDownWithoutIcon(
      iconOnpreesed: () {
        setState(() {
          showPersonalDetailsCon = !showPersonalDetailsCon;
        });
      },
      text: ' Personal details of account');
  Widget strategyDropDown() => DropDownWithoutIcon(
      iconOnpreesed: () {
        setState(() {
          showStrategy = !showStrategy;
        });
      },
      text: ' Strategy');

  Widget FinanceDropDown() => DropDownWithoutIcon(
      iconOnpreesed: () {
        setState(() {
          showFinance = !showFinance;
        });
      },
      text: 'Finance');
  Widget offerDropDown() => DropDownWithoutIcon(
      iconOnpreesed: () {
        setState(() {
          showOffers = !showOffers;
        });
      },
      text: 'Offer');
  Widget commonCon() => showCommonCon == true
      ? Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          child: commonInformationRow(),
        )
      : Container();
  Widget pcommonCon() => showPersonalDetailsCon == true
      ? Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          child: commonInformationRow(),
        )
      : Container();
  Widget ScommonCon() => showStrategy == true
      ? Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          child: commonInformationRow(),
        )
      : Container();
  Widget FcommonCon() => showFinance == true
      ? Container(
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.red,
          child: commonInformationRow(),
        )
      : Container();
  Widget OcommonCon() => showOffers == true
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
            text: "Nickname",
            Stext: 'Alpha',
          ),
          SizedBox(
            height: 1,
          ),
          TextRow(
            text: 'Visibility',
            Stext: 'Public',
          ),
          SizedBox(
            height: 1,
          ),
          IconRow()
        ],
      );
}

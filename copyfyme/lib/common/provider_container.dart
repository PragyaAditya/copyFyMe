import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProviderContainer extends StatefulWidget {
  const ProviderContainer({super.key});

  @override
  State<ProviderContainer> createState() => _ProviderContainerState();
}

class _ProviderContainerState extends State<ProviderContainer> {
  List nameList = [
    'Master 1',
    'Godman #3',
    'ACE TRADERS',
    'pipe hunter',
    'alphaa'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0xffE7E5E5)),
          borderRadius: BorderRadius.circular(20)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.027,
            ),
            textListView(),
            // Container(
            //   padding: EdgeInsets.only(left: 20),
            //   height: 30,
            //   width: double.infinity,
            //   // color: Colors.amber,
            //   child: Text("Master 1"),
            // ),
            // Container(
            //   alignment: Alignment.centerLeft,
            //   padding: EdgeInsets.only(left: 20),
            //   height: 30,
            //   width: double.infinity,
            //   color: Color(0xffEEEEEE),
            //   child: Text("Godman #3"),
            // ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  Widget textListView() => Container(
        // height: 100,
        width: double.infinity,
        child: ListView.builder(
          itemCount: nameList.length,
          itemBuilder: (BuildContext context, int index) {
            return Text("hello");
            // Container(
            //   alignment: Alignment.centerLeft,
            //   padding: EdgeInsets.only(left: 20),
            //   height: 30,
            //   width: double.infinity,
            //   color: nameList[index] == 1 ? Colors.black : Colors.white,
            //   child: Text(nameList[index]),
            // );
          },
        ),
      );
}

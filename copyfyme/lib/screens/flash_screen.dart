 
import 'package:copyfyme/screens/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({super.key});

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        const Duration(seconds: 5),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LogInPage()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.center,
        end: Alignment(0, 1),
        colors: <Color>[
          Color(0XFF0950AC),
          Color(0XFF0D62C5),
          Color(0XFF168FDE),
        ],
      )),
      child: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/copyfy me 1.png'))),
        ),
        Spacer(),
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          width: double.infinity,
          // width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              // color: Colors.amberAccent,
              image: DecorationImage(
                  image: AssetImage('assets/Flash Sceen Trading 1.png'),
                  fit: BoxFit.fitWidth)),
        )
      ]),
    )));
  }
}

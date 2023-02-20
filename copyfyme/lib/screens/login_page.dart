import 'package:copyfyme/common/button.dart';
import 'package:copyfyme/common/followers_info_message.dart';
import 'package:copyfyme/common/logo_without_text.dart';
import 'package:copyfyme/common/outline_text_container.dart';
import 'package:copyfyme/common/small_grey_text.dart';
import 'package:copyfyme/common/text_field.dart';
import 'package:copyfyme/common/tittle_blue_text.dart';
import 'package:copyfyme/screens/dashboard.dart';
import 'package:copyfyme/screens/follower_registration.dart';
import 'package:copyfyme/screens/provider_registration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            logoCon(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            logIntxt(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            emailField(),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.003,
            // ),
            // tradingAccountIdtxt(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            enterPasseordField(),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.003,
            // ),
            // tradingAccountAccounttxt(),
            forgetPassword(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            registerProvider(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.013,
            ),
            registerFollwer(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            loginBtn(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
          ],
        ),
      ),
    );
  }

  Widget registerProvider() => Center(
      child: OutlineTextContainer(
          onpressed: (() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProviderRegistration()),
            );
          }),
          text: "Register as Provider"));
  Widget registerFollwer() => Center(
      child: OutlineTextContainer(
          onpressed: (() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FollowerRegistration()),
            );
          }),
          text: "Register as Follower"));
  Widget tradingAccountIdtxt() => Padding(
        padding: const EdgeInsets.only(left: 20),
        child:
            SmallGreyText(text: "Trading account's ID (same as in MetaTrader)"),
      );
  Widget tradingAccountAccounttxt() => Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SmallGreyText(
            text: "Trading account's password (same as in MetaTrader)"),
      );
  Widget signInWithGooglebtn() => Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.54,
          decoration: BoxDecoration(
              color: Color(0xff0D62C5), borderRadius: BorderRadius.circular(3)),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.025,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.048,
                width: MediaQuery.of(context).size.width * 0.09,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                    image: DecorationImage(
                        image: AssetImage('assets/Group 27.png'))),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.025,
              ),
              Text(
                'Signin with Google',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
      );
  Widget loginBtn() => Center(
        child: Button(
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashboardPage()),
              );
            },
            text: "Login",
            color: Color(0xff0950AC),
            width: 0.5),
      );
  Widget DonthaveaccountRow() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don’t have account yet?',
            style: TextStyle(color: Color(0xff454343), fontSize: 16),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Register",
                style: TextStyle(color: Color(0xff0D62C5), fontSize: 18),
              ))
        ],
      );
  Widget forgetPassword() => Row(
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 14),
                )),
          ),
        ],
      );
  Widget enterPasseordField() => TextFields(
        Bottomtext: "Trading account's password (same as in MetaTrader)",
        labelTxt: "Enter Password",
        text: 'Enter Password',
        // hintText: 'Enter E-mail Address'
      );
  Widget emailField() => TextFields(
        Bottomtext: "Trading account's ID (same as in MetaTrader)",
        labelTxt: " Enter E-mail Address",
        text: 'Enter E-mail Address',
        // hintText: 'Enter E-mail Address'
      );
  Widget logIntxt() => Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
            padding: EdgeInsets.only(
              bottom: 5, // Space between underline and text
            ),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Color(0XFF0D62C5),
              width: 2.0, // Underline thickness
            ))),
            child: TitleText(text: "LOGIN")),
      );
  Widget logoCon() => LogoWithoutText();
}

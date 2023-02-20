import 'package:copyfyme/common/button.dart';
import 'package:copyfyme/common/logo_without_text.dart';
import 'package:copyfyme/common/text_field.dart';
import 'package:copyfyme/common/tittle_blue_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProviderRegistration extends StatefulWidget {
  const ProviderRegistration({super.key});

  @override
  State<ProviderRegistration> createState() => _ProviderRegistrationState();
}

class _ProviderRegistrationState extends State<ProviderRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            logoCon(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            providerRegistration(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            tradingAcoountField(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.023,
            ),
            enterPasseordField(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.023,
            ),
            nickNameField(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            loginWithCopyFyMebtn(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            registerBtn()
          ],
        ),
      ),
    );
  }

  Widget registerBtn() => Center(
        child: Button(
            onpressed: () {},
            text: "Register",
            color: Color(0xff0950AC),
            width: 0.5),
      );
  Widget loginWithCopyFyMebtn() => Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xffE7E5E5)),
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.025,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.048,
                width: MediaQuery.of(context).size.width * 0.07,
                decoration: BoxDecoration(
                    // color: Colors.white,

                    image: DecorationImage(
                        image: AssetImage('assets/Group 27.png'))),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.025,
              ),
              Text(
                'Login with Copyfyme',
                style: TextStyle(color: Color(0xff0D62C5), fontSize: 15),
              )
            ],
          ),
        ),
      );
  Widget nickNameField() => TextFields(
      labelTxt: "Nick Name",
      text: "Nick Name",
      Bottomtext: "Enter a Nick Name");
  Widget enterPasseordField() => TextFields(
        Bottomtext: "Enter a password",
        labelTxt: "Password",
        text: 'Password',
        // hintText: 'Enter E-mail Address'
      );
  Widget tradingAcoountField() => TextFields(
      labelTxt: "Trading Account",
      text: "Trading Account",
      Bottomtext: "Trading account ID");
  Widget providerRegistration() =>
      const TitleText(text: 'Provider Registration');
  Widget logoCon() => const LogoWithoutText();
}

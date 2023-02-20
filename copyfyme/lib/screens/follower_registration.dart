import 'package:copyfyme/common/grey_outline_drop_down.dart';
import 'package:copyfyme/common/logo_without_text.dart';
import 'package:copyfyme/common/provider_container.dart';
import 'package:copyfyme/common/small_grey_text.dart';
import 'package:copyfyme/common/text_field.dart';
import 'package:copyfyme/common/tittle_blue_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FollowerRegistration extends StatefulWidget {
  const FollowerRegistration({super.key});

  @override
  State<FollowerRegistration> createState() => _FollowerRegistrationState();
}

class _FollowerRegistrationState extends State<FollowerRegistration> {
  bool showProvider = false;
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
            followersRegistration(),
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
            providerDropDown(),
            selectAnActiveProvide()
          ],
        ),
      ),
    );
  }

  Widget providerDropDown() => GreyOutlineDropDownWithIcon(
        iconOnpreesed: () {
          setState(() {
            showProvider = !showProvider;
          });
          print(showProvider);
        },
        text: "Provider",
      );
  Widget selectAnActiveProvide() => showProvider == false
      ? Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SmallGreyText(text: "Select an Active Provider"),
        )
      : ProviderContainer();
  Widget enterPasseordField() => TextFields(
        Bottomtext: "Trading Account Password",
        labelTxt: "Password",
        text: 'Password',
        // hintText: 'Enter E-mail Address'
      );
  Widget tradingAcoountField() => TextFields(
      labelTxt: "Trading Account",
      text: "Trading Account",
      Bottomtext: "Trading account ID");
  Widget followersRegistration() =>
      const TitleText(text: 'Follower Registration');
  Widget logoCon() => LogoWithoutText();
}

import 'package:flutter/cupertino.dart';
 

class LogoWithoutText extends StatelessWidget {
  const LogoWithoutText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.12,
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/Group 27.png'))),
      ),
    );
  }
}

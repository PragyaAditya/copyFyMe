import 'package:flutter/material.dart';

class TextRow extends StatelessWidget {
  final String text;
  final String Stext;
  TextRow({super.key, required this.text, required this.Stext});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Color(0xff909090), blurRadius: 2)]),
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 20),
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(color: Color(0xff454343)),
            ),
            Spacer(),
            Text(Stext, style: TextStyle(color: Color(0xff454343)))
          ],
        ),
      ),
    );
  }
}

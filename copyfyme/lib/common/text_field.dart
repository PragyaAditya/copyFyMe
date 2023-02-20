import 'package:copyfyme/common/small_grey_text.dart';
import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  // final IconData icon;
  final String text;
  final String Bottomtext;

  final TextEditingController? controller;
  final TextInputType? textInputType;
  final String labelTxt;

  // final Widget widget;

  const TextFields(
      {Key? key,
      required this.labelTxt,
      required this.text,
      this.controller,
      this.textInputType,
      required this.Bottomtext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 45,
          child: TextFormField(
            controller: controller,
            keyboardType: textInputType,

            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.only(left: 20),
                labelText: labelTxt,
                labelStyle: TextStyle(color: Color(0XFF909090), fontSize: 14),
                // hintText: hintText,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      width: 1, color: Color(0XFFE7E5E5)), //<-- SEE HERE
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      width: 1, color: Color(0XFFE7E5E5)), //<-- SEE HERE
                )),

            // widget
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.001,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SmallGreyText(text: Bottomtext),
        )
      ],
    );
  }
}

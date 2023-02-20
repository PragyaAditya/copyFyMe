import 'package:flutter/material.dart';

class RoundedOutlinButton extends StatefulWidget {
  final VoidCallback onpressed;
  final String text;
  final Color color;
  final double width;

  const RoundedOutlinButton(
      {Key? key,
      required this.onpressed,
      required this.text,
      required this.color,
      required this.width})
      : super(key: key);

  @override
  State<RoundedOutlinButton> createState() => _RoundedOutlinButtonState();
}

class _RoundedOutlinButtonState extends State<RoundedOutlinButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * widget.width,
      height: MediaQuery.of(context).size.height * 0.054,
      child: Container(
          decoration: BoxDecoration(
            // color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5),
            // boxShadow: [
            //   const BoxShadow(
            //     color: Color(0xFFBEBEBE),
            //     offset: Offset(10, 10),
            //     blurRadius: 10,
            //     spreadRadius: 2,
            //   ),
            //   const BoxShadow(
            //     color: Colors.white,
            //     offset: Offset(-10, -10),
            //     blurRadius: 5,
            //     spreadRadius: 8,
            //   ),
            // ]
          ),
          child: ElevatedButton(
            onPressed: widget.onpressed,
            style: ElevatedButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
                primary: widget.color,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xffE7E5E5)),
                    borderRadius: BorderRadius.circular(20))),
            child: _text(),
          )),
    );
  }

  Widget _text() {
    return Text(
      widget.text,
      style: TextStyle(
          fontSize: 14, color: Color(0xff494949), fontWeight: FontWeight.w500),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

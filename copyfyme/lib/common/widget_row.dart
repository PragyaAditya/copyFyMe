import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconRow extends StatefulWidget {
  const IconRow({
    super.key,
  });

  @override
  State<IconRow> createState() => _IconRowState();
}

class _IconRowState extends State<IconRow> {
  bool forIos = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Color(0xff909090), blurRadius: 2)]),
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            Text(
              "Show account name",
              style: TextStyle(color: Color(0xff454343)),
            ),
            Spacer(),
            Transform.scale(
              scale: 0.7,
              child: CupertinoSwitch(
                // overrides the default green color of the track
                activeColor: Colors.pink.shade200,
                // color of the round icon, which moves from right to left
                thumbColor: Colors.white,
                // when the switch is off
                trackColor: Colors.black12,
                // boolean variable value
                value: forIos,
                // changes the state of the switch
                onChanged: (value) => setState(() => forIos = value),
              ),
            )
          ],
        ),
      ),
    );
  }
}

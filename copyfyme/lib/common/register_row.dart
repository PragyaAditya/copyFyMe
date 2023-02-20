// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class RegisterRow extends StatefulWidget {
//   const RegisterRow({
//     super.key,
//   });

//   @override
//   State<RegisterRow> createState() => _RegisterRowState();
// }

// class _RegisterRowState extends State<RegisterRow> {
//   bool forIos = false;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [BoxShadow(color: Color(0xff909090), blurRadius: 2)]),
//       height: MediaQuery.of(context).size.height * 0.055,
//       width: MediaQuery.of(context).size.width,
//       child: Padding(
//         padding: const EdgeInsets.only(left: 10, right: 10),
//         child: Row(
//           children: [
//             Text(
//               "Show account name",
//               style: TextStyle(color: Color(0xff454343)),
//             ),
//             Spacer(),
//             SizedBox(
//               height: 25,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                     elevation: 0,
//                     primary: Color(0xffE5E3E3),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20))),
//                 child: Text(
//                   'Active',
//                   style: TextStyle(color: Color(0xff495057), fontSize: 11),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

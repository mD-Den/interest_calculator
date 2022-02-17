// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class ResetAnimation extends StatefulWidget {
//   const ResetAnimation({Key key}) : super(key: key);
//
//   @override
//   _ResetAnimationState createState() => _ResetAnimationState();
// }
//
// class _ResetAnimationState extends State<ResetAnimation> {
//   bool _isElevated = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: GestureDetector(
//         onTap: () {
//           setState(() {
//             _isElevated = !_isElevated;
//           });
//         },
//         child: AnimatedContainer(
//             margin: EdgeInsets.all(15),
//             padding: EdgeInsets.all(0),
//             duration: const Duration(milliseconds: 200),
//             width: 60,
//             height: 60,
//             decoration: BoxDecoration(
//                 color: Colors.blue[300],
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: _isElevated
//                     ? [
//                         BoxShadow(
//                           color: Colors.blue[500],
//                           offset: const Offset(4, 4),
//                           blurRadius: 15,
//                           spreadRadius: 1,
//                         ),
//                         BoxShadow(
//                             color: Colors.white,
//                             offset: Offset(-4, -4),
//                             blurRadius: 15,
//                             spreadRadius: 1),
//                       ]
//                     : null),
//         )
//       ),
//     );
//   }
// }

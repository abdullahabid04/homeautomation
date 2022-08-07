import 'package:flutter/material.dart';
import '/constants.dart';

class SmallRoundedButton extends StatefulWidget {
  final String text;
  final Function() press;
  final Color color, textColor;

  const SmallRoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = Colors.blue,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  State<SmallRoundedButton> createState() => _SmallRoundedButtonState();
}

class _SmallRoundedButtonState extends State<SmallRoundedButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.20,
      height: size.height * 0.03,
      child: ClipRRect(
        borderRadius: BorderRadius.circular((size.height * 0.03) / 2),
        child: newElevatedButton(),
      ),
    );
  }

  //Used:ElevatedButton as FlatButton is deprecated.
  //Here we have to apply customizations to Button by inheriting the styleFrom

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        widget.text,
        style: TextStyle(color: widget.textColor),
      ),
      onPressed: widget.press,
      style: ElevatedButton.styleFrom(
          primary: widget.color,
          // padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          textStyle: TextStyle(
              color: widget.textColor,
              fontSize: 12,
              fontWeight: FontWeight.w500)),
    );
  }
}

// class RoundedButton extends StatelessWidget {
//   final String text;
//   final Function() press;
//   final Color color, textColor;
//   const RoundedButton({
//     Key? key,
//     required this.text,
//     required this.press,
//     this.color = kPrimaryColor,
//     this.textColor = Colors.white,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 10),
//       width: size.width * 0.8,
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(29),
//         child: newElevatedButton(),
//       ),
//     );
//   }

//   //Used:ElevatedButton as FlatButton is deprecated.
//   //Here we have to apply customizations to Button by inheriting the styleFrom

//   Widget newElevatedButton() {
//     return ElevatedButton(
//       child: Text(
//         text,
//         style: TextStyle(color: textColor),
//       ),
//       onPressed: press,
//       style: ElevatedButton.styleFrom(
//           primary: color,
//           padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
//           textStyle: TextStyle(
//               color: textColor, fontSize: 14, fontWeight: FontWeight.w500)),
//     );
//   }
// }
 
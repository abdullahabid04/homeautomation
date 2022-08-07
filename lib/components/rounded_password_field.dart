import 'package:flutter/material.dart';
import '/components/text_field_container.dart';
import '/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final String? hinttext;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;

  const RoundedPasswordField({
    Key? key,
    this.hinttext,
    required this.onChanged,
    required this.controller,
  }) : super(key: key);
  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: widget.controller,
        obscureText: true,
        onChanged: widget.onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: widget.hinttext,
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

// class RoundedPasswordField extends StatelessWidget {
//   final ValueChanged<String> onChanged;
//   const RoundedPasswordField({
//     Key? key,
//     required this.onChanged,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextFieldContainer(
//       child: TextField(
//         obscureText: true,
//         onChanged: onChanged,
//         cursorColor: kPrimaryColor,
//         decoration: InputDecoration(
//           hintText: "Password",
//           icon: Icon(
//             Icons.lock,
//             color: kPrimaryColor,
//           ),
//           suffixIcon: Icon(
//             Icons.visibility,
//             color: kPrimaryColor,
//           ),
//           border: InputBorder.none,
//         ),
//       ),
//     );
//   }
// }

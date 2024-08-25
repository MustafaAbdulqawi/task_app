import 'package:flutter/material.dart';

import 'constants.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          style: ButtonStyle(
            overlayColor:
            overColor(),
          ),
          onPressed: () {},
          child: Text(
            "Forget password ?",
            style: TextStyle(
              color: Constants.kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

}  MaterialStateProperty<Color?> overColor() => MaterialStateProperty.all(Colors.transparent);


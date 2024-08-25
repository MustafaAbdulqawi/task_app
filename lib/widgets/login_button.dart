import 'package:flutter/material.dart';

import 'constants.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        // elevation: MaterialStatePropertyAll(2),
        padding: const MaterialStatePropertyAll(
            EdgeInsetsDirectional.symmetric(vertical: 12)),
        backgroundColor: MaterialStatePropertyAll(
          Constants.kPrimaryColor,
        ),
      ),
      onPressed: () {
        //Navigation =>
      },
      child: const Text(
        "Login",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}

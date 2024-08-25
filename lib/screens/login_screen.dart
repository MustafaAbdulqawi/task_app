import 'package:flutter/material.dart';


import '../widgets/constants.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/forget_password.dart';
import '../widgets/login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailCon = TextEditingController();
  TextEditingController passwordCon = TextEditingController();
  bool isVisibility = true;
  IconData iconData = Icons.visibility;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              Constants.baseImage,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Login",
              style: TextStyle(
                  color: Constants.kPrimaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              isObscure: false,
              prefixIcon: Icons.email,
              hitText: "Email",
              controller: emailCon,
              obscuringCharacter: "*",
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormField(
              obscuringCharacter: "*",
              isObscure: isVisibility,
              controller: passwordCon,
              prefixIcon: Icons.lock,
              hitText: "Password",
              suffixIcon: IconButton(
                icon: Icon(
                  color: Constants.kPrimaryColor,
                  isVisibility ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {});
                  isVisibility = !isVisibility;
                },
              ),
            ),
            const ForgetPassword(),
            const SizedBox(
              height: 10,
            ),
            const LoginButton(),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Text(
                  "Don't have an Account? ",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    //Navigation =>
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Constants.kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

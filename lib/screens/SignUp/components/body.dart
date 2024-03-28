import 'package:bai_1/components/already_have_an_account_check.dart';
import 'package:bai_1/components/rounded_button.dart';
import 'package:bai_1/components/rounded_input_field.dart';
import 'package:bai_1/components/rounded_password_field.dart';
import 'package:bai_1/screens/Login/login_screen.dart';
import 'package:bai_1/screens/SignUp/components/background.dart';
import 'package:bai_1/screens/SignUp/components/or_divider.dart';
import 'package:bai_1/screens/SignUp/components/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "SIGN UP",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            'lib/icons/signup.svg',
            height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "SIGN UP",
            press: () {},
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
          ),
          const OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialIcon(
                iconSrc: 'lib/icons/facebook.svg',
                press: (){},
              ),
              SocialIcon(
                iconSrc: 'lib/icons/twitter.svg',
                press: () {},
              ),
              SocialIcon(
                iconSrc: 'lib/icons/google-plus.svg',
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
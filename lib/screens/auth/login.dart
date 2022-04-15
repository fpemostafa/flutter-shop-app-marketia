import 'package:flutter/material.dart';

import 'package:marketia/constants.dart';
import 'package:marketia/screens/auth/register.dart';
import 'package:marketia/Ui/theme.dart';
import 'package:marketia/widgets/defualt_button.dart';

import 'package:marketia/widgets/text_input_form.dart';
import 'package:marketia/widgets/third_party_auth.dart';

class LoginScrren extends StatelessWidget {
  const LoginScrren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme myTextTheme = MyThemeData.lightMode.textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
              start: defualtPadding, end: defualtPadding, top: 110),
          child: Column(
            children: [
              Container(
                width: 72,
                height: 72,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.png")),
                  color: primaryColor,
                  borderRadius: bigBorderRadius,
                ),
              ),
              const SizedBox(height: defualtPadding - 4),
              Text("Welcome To Marketia", style: myTextTheme.headline4),
              const SizedBox(height: defualtPadding / 2 - 2),
              Text("Sign in to continue", style: myTextTheme.bodyText1),
              const SizedBox(height: defualtPadding + 8),
              const TextInputForm(
                hintText: 'Your Email',
                inputType: TextInputType.emailAddress,
                prefixIcon: "assets/icons/mail.svg",
              ),
              const SizedBox(height: defualtPadding / 2 - 2),
              const TextInputForm(
                isLast: true,
                isPassword: true,
                hintText: 'Password',
                prefixIcon: "assets/icons/lock.svg",
              ),
              const SizedBox(height: defualtPadding - 4),
              const DefualtButton(
                lable: "Sign In",
              ),
              const SizedBox(height: defualtPadding - 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .35,
                    height: 1,
                    color: neutralLight,
                  ),
                  Text('OR', style: myTextTheme.headline2),
                  Container(
                    width: MediaQuery.of(context).size.width * .35,
                    height: 1,
                    color: neutralLight,
                  ),
                ],
              ),
              const SizedBox(height: defualtPadding - 4),
              ThirdPartyButton(
                logo: 'assets/icons/google_logo.svg',
                text: 'Login With Google',
                press: () {},
              ),
              const SizedBox(height: defualtPadding / 2 - 2),
              ThirdPartyButton(
                logo: 'assets/icons/facebook_logo.svg',
                text: 'Login With Facebook',
                press: () {},
              ),
              const SizedBox(height: defualtPadding / 2 - 2),
              TextButton(
                style: TextButton.styleFrom(
                  primary: primaryColor,
                ),
                child: Text(
                  "Forgot Password?",
                  style: myTextTheme.bodyText2!.copyWith(
                    color: primaryColor,
                    fontWeight: FontWeight.w700,
                    letterSpacing: .5,
                  ),
                ),
                onPressed: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have a account? ",
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      elevation: 0,
                      padding: EdgeInsets.zero,
                      primary: primaryColor,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (ctx) => const Register()));
                    },
                    child: Text(
                      "Register",
                      style: myTextTheme.bodyText2!.copyWith(
                        color: primaryColor,
                        fontWeight: FontWeight.w700,
                        letterSpacing: .5,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:marketia/screens/auth/login.dart';
import 'package:marketia/widgets/defualt_button.dart';
import 'package:marketia/widgets/text_input_form.dart';

import '../../constants.dart';
import '../../Ui/theme.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme myTextTheme = MyThemeData.lightMode.textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
              start: defualtPadding, end: defualtPadding, top: 110),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              Text("Let's Get Started", style: myTextTheme.headline4),
              const SizedBox(height: defualtPadding / 2 - 2),
              Text("Create an new account", style: myTextTheme.bodyText1),
              const SizedBox(height: defualtPadding + 8),
              const TextInputForm(
                hintText: 'Full Name',
                prefixIcon: "assets/icons/user.svg",
              ),
              const SizedBox(height: defualtPadding / 2 - 2),
              const TextInputForm(
                hintText: 'Your Email',
                inputType: TextInputType.emailAddress,
                prefixIcon: "assets/icons/mail.svg",
              ),
              const SizedBox(height: defualtPadding / 2 - 2),
              const TextInputForm(
                isPassword: true,
                hintText: 'Password',
                prefixIcon: "assets/icons/lock.svg",
              ),
              const SizedBox(height: defualtPadding / 2 - 2),
              const TextInputForm(
                isPassword: true,
                isLast: true,
                hintText: 'Password Again',
                prefixIcon: "assets/icons/lock.svg",
              ),
              const SizedBox(height: defualtPadding - 4),
              const DefualtButton(
                lable: "Sign Up",
              ),
              const SizedBox(height: defualtPadding - 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Have a account? ",
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      elevation: 0,
                      padding: EdgeInsets.zero,
                      primary: primaryColor,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (ctx) => const LoginScrren()));
                    },
                    child: Text(
                      "Sign In",
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

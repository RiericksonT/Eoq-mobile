import 'package:flutter/material.dart';
import 'package:flutter_eoq/controller/google_sign_in.dart';
import 'package:flutter_eoq/view/Screens/Register/components/background.dart';
import 'package:flutter_eoq/view/Screens/Register/components/or_divider.dart';
import 'package:flutter_eoq/view/Screens/Register/components/socialIcons.dart';
import 'package:flutter_eoq/view/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_eoq/view/components/have_account_check.dart';
import 'package:flutter_eoq/view/components/rounded_button.dart';
import 'package:flutter_eoq/view/components/rounded_input_field.dart';
import 'package:flutter_eoq/view/components/rounded_password_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Realize seu cadastro",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white,
                fontFamily: 'Roboto',
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Prencha os campos abaixo para começar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
                fontFamily: 'Roboto',
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedInputField(
              hintText: "Nome",
              onChanged: (value) {},
              icon: Icons.person,
            ),
            RoundedInputField(
              hintText: "Sobrenome",
              onChanged: (value) {},
              icon: Icons.person,
            ),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
              icon: Icons.email,
            ),
            RoundedPasswordField(hintText: "Sua senha", onChanged: (value) {}),
            SizedBox(height: size.height * 0.06),
            RoundedButton(
              text: "Cadastrar",
              press: () {},
            ),
            SizedBox(height: size.height * 0.02),
            HaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen();
                    },
                  ),
                );
              },
              login: false,
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcons(
                  iconScr: 'assets/images/facebookLogo.png',
                  press: () {},
                ),
                SocialIcons(
                  iconScr: 'assets/images/googleLogo.png',
                  press: () {
                    final provider = Provider.of<GoogleSignInProvider>(context,
                        listen: false);
                    provider.googleLogin();

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return WelcomeScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ]),
    ));
  }
}

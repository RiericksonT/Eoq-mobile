import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eoq/controller/google_sign_in.dart';
import 'package:flutter_eoq/view/Screens/Logged/components/background.dart';
import 'package:flutter_eoq/view/components/rounded_button.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Bom,${user.displayName} Voce esta logado porem nao tem nada por aqui ainda",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: size.height * 0.05),
          Image.asset(
            "assets/images/working.png",
            height: size.height * 0.2,
          ),
          RoundedButton(
            text: "Sair",
            press: () {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.logout();
            },
          ),
        ],
      ),
    );
  }
}

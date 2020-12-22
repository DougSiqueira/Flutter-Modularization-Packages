import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:shared/shared.dart';
import 'package:localization/localization.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String lang = 'pt_BR';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("loginAppBar".i18n()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CustomButton(
              title: "titleLogin".i18n(),
              onPressed: () => Modular.to.pushNamed('/payment'),
              color: Colors.red,
            ),
          ),
          RaisedButton(
            child: Text("change-value".i18n()),
            onPressed: () async {
              setState(() {
                if (lang == 'pt_BR')
                  lang = 'en_US';
                else
                  lang = 'pt_BR';
              });
              await Localization.configuration(defaultLang: lang);
            },
          ),
        ],
      ),
    );
  }
}

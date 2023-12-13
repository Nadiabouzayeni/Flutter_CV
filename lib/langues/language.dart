import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';

class LanguagePage extends StatelessWidget {
  void _changeLanguage(BuildContext context, Locale newLocale) {
    MyApp.setLocale(context, newLocale);
    SystemChannels.textInput.invokeMethod('TextInput.hide'); // Cacher le clavier après le changement de langue
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Changer la langue'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
ElevatedButton(
onPressed: () {
_changeLanguage(context, Locale('en', 'US')); // Choisir l'anglais
},
child: Text('English'),
),
ElevatedButton(
onPressed: () {
_changeLanguage(context, Locale('fr', 'FR')); // Choisir le français
},
child: Text('Français'),
),
ElevatedButton(
onPressed: () {
_changeLanguage(context, Locale('ar', 'SA')); // Choisir l'arabe
},
child: Text('العربية'),
),
],
),
),
);
}
}

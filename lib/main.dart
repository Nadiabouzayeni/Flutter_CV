import 'package:flutter/material.dart';
import 'package:prenom/accueil.dart';
import 'package:prenom/pages/certificat.dart';
import 'package:prenom/pages/etudes.dart';
import 'package:prenom/pages/experience.dart';
import 'package:prenom/pages/info.dart';
import 'package:prenom/pages/portfolio.dart';
import 'package:prenom/splashscreen.dart';
import 'package:prenom/pages/competences.dart';
import 'package:prenom/theme/theme.dart';
import 'package:provider/provider.dart';
import 'langues/language.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // ... autres parties du code

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeProvider.themeData,
          routes: {
            '/splashscreen': (context) => SplashscreenPage(),
            '/accueil': (context) => AccueilPage(),
            '/info': (context) => InformationsPersonnellesPage(),
            '/etudes': (context) => EtudesPage(),
            '/experience': (context) => ExperiencePage(),
            '/certificat': (context) => CertificatPage(),
            '/competences': (context) => CompetencesPage(),
            '/portfolio': (context) => PortfolioPage(),
            '/language': (context) => LanguagePage(),

          },
          home: SplashscreenPage(),
        );
      },
    );
  }

  static void setLocale(BuildContext context, Locale newLocale) {}
}

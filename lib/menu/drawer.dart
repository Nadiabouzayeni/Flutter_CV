import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../config/global.dart';
import '../langues/language.dart';
import '../main.dart';
import '../theme/theme.dart';

class CustomDivider extends Divider {
  CustomDivider({
    Key? key,
    required Color color,
    required double thickness,
  }) : super(
    key: key,
    color: color,
    thickness: thickness,
  );
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
               colors: themeProvider.isDarkMode
          ? [Colors.black, Colors.white]
            : [Colors.white, Colors.blueGrey],
                ),),
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/a2.jpg"),
                    radius: 80,
                  ),
                ),
              ),

              ...Global.Acceuil.map((item) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(item["title"].toString()),
                      leading: item["icon"] as Icon,
                      onTap: () {
                        Navigator.pushNamed(context, item["route"].toString());
                      },
                    ),
                    // Ajout d'un Divider personnalisé
                    CustomDivider(
                      color: themeProvider!.isDarkMode
                          ? Colors.white
                          : Colors.orange,
                      thickness: 2,
                    )
                  ],
                );
              }).toList(),
            ],
          );
        },
      ),
    );
  }
}



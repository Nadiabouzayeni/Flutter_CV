import 'package:flutter/material.dart';
import 'accueil.dart';
//import 'package:nom/splash_screen.dart';

class SplashscreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: Text('Accueil Page'),
      //),
      body: FutureBuilder(
        future: Future.delayed(Duration(seconds:5 )),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(
              //color: Colors.blueGrey,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.black
                  : Colors.blueGrey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Mon CV',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'images/img.png',
                    width: 200,
                    height: 200,
                  ),
                  SizedBox(height: 20),
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                     Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.orange,
                    ),
                  )

                ],
              ),
            );
          } else {
            return AccueilPage();
          }
        },
      ),
    );
  }
}

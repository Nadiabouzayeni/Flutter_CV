import 'package:flutter/material.dart';

class EcommercePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details  Projet Ecommerce '),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
              'Ecommerce',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/ecommerce1.png',
              width: 400,
              height: 200,
            ),
            SizedBox(height: 10),

            Text(
              "La figure présente l'interface d'accueil. "
                  "des Produit ,on peut connaitre plus mieux sur chacun de ces produit .",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Image.asset(
              'images/ecommerce2.png',
              width: 400,
              height: 200,
            ),

            SizedBox(height: 10),
            Text(
              "Cette figure représente les informations d'un produit ,"
                  " elle contient des boutons (update) pour modifier ou (delete) supprimer,",
              style: TextStyle(fontSize: 16),

            ),
            SizedBox(height: 20),
            Image.asset(
              'images/ecommerce3.png',
              width: 400,
              height: 200,
            ),

            SizedBox(height: 10),
            Text(
              "La listes des commandes  ",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    ),
    );
  }
}



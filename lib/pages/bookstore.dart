import 'package:flutter/material.dart';

class BookstorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Projet Ecommerce'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Projet bookstore',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/bookstore1.png',
                width: 400,
                height: 200,
              ),
              SizedBox(height: 10),

                Text(
                "La figure présente l'interface d'accueil. Si l'utilisateur a déjà un compte, il se connecte directement. Sinon, il crée un compte.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Image.asset(
                  'images/bookstore2.png',
                  width: 400,
                  height: 200,
                ),

              SizedBox(height: 10),
              Text(
                "Cette figure représente la page Dashboard de l’utilisateur ou il peut trouver ses commandes,"
                    " elle contient des boutons (+) pour ajouter à la quantité ou (-) diminuer,"
                    " une corbeille   pour supprimer et à l’autre côté un résume de prix. Finalement, "
                    "elle contient des boutons l’un rendre à la page précédente pour continuer "
                    "la consultation et l’autre pour terminer l’étape final : paiement ",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/bookstore3.png',
                width: 400,
                height: 200,
              ),

              SizedBox(height: 10),
              Text(
                "Les cordonnées de chaque utilisateur s’affiche sous forme d’un PDF qui peut le télécharger  ",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


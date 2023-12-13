import 'package:flutter/material.dart';

class GestionLienPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon Projet 4'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ecommerce ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/angular1.png',
                width: 400,
                height: 200,
              ),
              SizedBox(height: 10),

              Text(
                "La figure présente l'interface d'accueil. "
                    " en autre a propos de notre site avec une paragraphe et video pour plus connaitre le vente en ligne ",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/angular4.png',
                width: 400,
                height: 200,
              ),

              SizedBox(height: 10),
              Text(
                "Cette figure représente la poge login  ,"
                    " chaque client peut connecter et faire un compte, meme en peut register et logout  ",
                style: TextStyle(fontSize: 16),

              ),
              SizedBox(height: 20),
              Image.asset(
                'images/angular2.png',
                width: 400,
                height: 200,
              ),

              SizedBox(height: 10),
              Text(
                "La listes des produit en stock en peut soit ajouter modifier ou supprimer meme voir le detail de chaque produit  ",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/angular5.png',
                width: 400,
                height: 200,
              ),

              SizedBox(height: 10),
              Text(
                "voila l'un d'interface d'un crud ajouter    ",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/angular3.png',
                width: 400,
                height: 200,
              ),

              SizedBox(height: 10),
              Text(
                "voila l'espace de client en peut consulter le prix de chaque produit et l'ajouter ou panier pou pursuivre le paiement avec stripe ",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



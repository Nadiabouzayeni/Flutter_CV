import 'package:flutter/material.dart';

class CVPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon Projet 1'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Voyage ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/voy1.jpg',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 10),

              Text(
                "La figure présente l'interface d'accueil. "
                    " avec le nom d'utilisateur et les 6 images sont deja  des liens a drawer",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/voy2.jpg',
                width: 400,
                height: 200,
              ),

              SizedBox(height: 10),
              Text(
                "Cette figure représente la page d'image  ,"
                    " c'est un Api   qui retourne liste d'image  ",
                style: TextStyle(fontSize: 16),

              ),
              SizedBox(height: 20),
              Image.asset(
                'images/voy3.jpg',
                width: 400,
                height: 200,
              ),

              SizedBox(height: 10),
              Text(
                "c'est un fichier parametres qui fait la modification du theme grace au firebase  ",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/voy4.jpg',
                width: 400,
                height: 200,
              ),

              SizedBox(height: 10),
              Text(
                "c'est l'interface de meteo retourne la tempereture   ",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/voy5.jpg',
                width: 400,
                height: 200,
              ),

              SizedBox(height: 10),
              Text(" c'est l'interface de coontact en peut soit ajouter modifier ou supprimer ",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/voy6.jpg',
                width: 400,
                height: 200,
              ),

              SizedBox(height: 10),
              Text(
                " c'est la page de pays qui retourne l'api de listes de pays",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



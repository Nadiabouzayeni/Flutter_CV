import 'package:flutter/material.dart';

class ArtyprodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details  Projet Artyprod '),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Artyprod',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/art1.png',
                width: 400,
                height: 200,
              ),
              SizedBox(height: 10),

              Text(
                "La figure présente l'interface d'accueil. "
                    "avec un titre animé.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/art2.png',
                width: 400,
                height: 200,
              ),

              SizedBox(height: 10),
              Text(
                "Cette figure représente le portfilio  ,"
                    " elle contient logo societe",
                style: TextStyle(fontSize: 16),

              ),
              SizedBox(height: 20),
              Image.asset(
                'images/art3.png',
                width: 400,
                height: 200,
              ),

              SizedBox(height: 10),
              Text(
                "cette figure presente l'un de cv des equipe de societe "
                    "et son roule , son poste ",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/art4.png',
                width: 400,
                height: 200,
              ),

              SizedBox(height: 10),
              Text(
                "cette figure presente l'un  des equipe de societe "
                    " son resume , son education  ",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



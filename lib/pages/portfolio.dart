import 'package:flutter/material.dart';
import 'package:prenom/pages/artyProd.dart';
import 'cv.dart';
import 'ecommerce.dart';
import 'gestionliens.dart';
import 'bookstore.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        title: Text('Portfolio'),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [

            SizedBox(height: 20),
            ProjectCard(
              title: 'Projet 2: Ecommerce (Django) ',
              description: 'Un site ecommerce développé avec Django.',

              color: Theme.of(context).brightness == Brightness.dark
                  ?Colors.black
                  :Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EcommercePage()),
                );
              },
            ),
            SizedBox(height: 20),
            ProjectCard(
              title: 'Projet 3: Bookstore (Django) ',
              description: 'Une application de gestion de librairie réalisée avec Django.',
              color: Theme.of(context).brightness == Brightness.dark
                  ?Colors.black
                  :Colors.orange,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookstorePage()),
                );
              },
            ),
            SizedBox(height: 20),
            ProjectCard(
              title: 'Projet 4: ArtyProd(Django) ',
              description: "Une application  de description d'une  societe ArtyProd(des services ,project et equipe)"
                  " réalisée avec Django .",
              color: Theme.of(context).brightness == Brightness.dark
                  ?Colors.black
                  :Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArtyprodPage()),
                );

              },
            ),
            SizedBox(height: 20),
            ProjectCard(
              title: 'Projet 4: Ecommerce ( Node.js, MongoDB et Angular)',
              description: 'Une application de vente en ligne développée avec Node.js, MongoDB et Angular.',
              color: Theme.of(context).brightness == Brightness.dark
                  ?Colors.black
                  :Colors.purple,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GestionLienPage()),
                );
              },
            ),
            SizedBox(height: 20),
            ProjectCard(
              title: 'Projet 1: voyage (Flutter)',
              description: 'Un CV interactif réalisé avec Flutter.',
              color: Theme.of(context).brightness == Brightness.dark
                  ?Colors.black
                  :Colors.pinkAccent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CVPage()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final VoidCallback? onPressed;

  ProjectCard({
    required this.title,
    required this.description,
    required this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                description,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class ExperiencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ?Colors.black
            :Colors.blueGrey,
        title: Text('Expériences professionnelles '),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [

                          SizedBox(width: 10), // Ajoute un espace entre le texte et l'image
                          Image.asset('images/flech.jpeg', width: 30, height: 30), // Remplacez le chemin par votre image
                          Text(
                            'juillet 2023',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Digithink Consulting Entreprise, Tunis',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Stagiaire',
                        style: TextStyle(fontSize: 20,color: Colors.orange),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Développement du site web (bookstore)\nUtilisation de technologies telles que HTML, CSS, Django, Python',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset('images/flech.jpeg', width: 30, height: 30), // Remplacez le chemin par votre image
                          SizedBox(width: 10), // Ajoute un espace entre l'image et le texte
                          Text(
                            'janvier 2022 - février 2022',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Poste Tunisienne, Sfax',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Stagiaire',
                        style: TextStyle(fontSize: 20,color: Colors.orange),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Stage d’initiation\nObservation et découverte du domaine du développement web',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/info');
                    },
                    icon: Icon(Icons.arrow_back),
                    label: Text(''),
                    style: ElevatedButton.styleFrom(
                       // Modifier la couleur du bouton en orange
                      primary: Theme.of(context).brightness == Brightness.dark
                          ?Colors.black
                          :Colors.orange,
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/etudes');
                    },
                    icon: Icon(Icons.arrow_forward),
                    label: Text(''),
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).brightness == Brightness.dark
                        ?Colors.black
                        :Colors.orange,
                        ), // Modifier la couleur du bouton en orange
                    ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
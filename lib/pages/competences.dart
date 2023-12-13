import 'package:flutter/material.dart';

class CompetencesPage extends StatefulWidget {
  @override
  _CompetencesPageState createState() => _CompetencesPageState();
}

class _CompetencesPageState extends State<CompetencesPage> {
  String selectedCompetence = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compétences'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(

            title: Text('Compétences Techniques'),
            tileColor: selectedCompetence == 'techniques' ? Colors.orange : Colors.blueGrey,
            onTap: () {
              setState(() {
                selectedCompetence = 'techniques';
              });
            },
          ),
          Divider( ),
          ListTile(
            title: Text('Compétences Générales'),
            tileColor: selectedCompetence == 'générales' ? Colors.orange : Colors.blueGrey,
            onTap: () {
              setState(() {
                selectedCompetence = 'générales';
              });
            },
          ),
          Divider(),
          selectedCompetence == 'techniques'
              ? Card(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Conception et développement web :',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('création de sites web, développement d applications web, intégration de maquettes'),



                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Langages de programmation :',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('HTML, CSS, JavaScript, PHP, Python, Java, Android, C#, .NET, etc.'),
                          // Ajoutez les autres langages de programmation de la même manière si nécessaire
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Frameworks :',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('React, Angular, Flutter, Next.js, Django, Spring Boot, Node.js'),

                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Base de données :',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('MySQL, MongoDB'),

                        ],
                      ),
                    ),
                  ),


                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Contrôle de version :',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('Git, GitHub'),

                        ],
                      ),
                    ),
                  ),



                ],
              ),
            ),
          )
              : selectedCompetence == 'générales'
              ? Card(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

              Card(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                    'Résolution de problèmes :',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Résolution de problèmes : analyser et résoudre des problèmes complexes.'),



                ],
              ),
            ),
          ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                    'Collaboration et travail d équipe:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('travailler efficacement en équipe, à communiquer et à collaborer.'),



                ],
              ),
            ),
          ),
          Card(
          child: Padding(
          padding: EdgeInsets.all(20),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    'Gestion de projet:',
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 10),
    Text('gérer les délais, organiser le travail de manière efficace.'),



    ],
    ),
    ),
    ),
    Card(
    child: Padding(
    padding: EdgeInsets.all(20),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    'Adaptabilité:',
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 10),
    Text('s adapter aux nouvelles technologies, aux changements de projet.'),



    ],
    ),
    ),
    ),
                  Card(
                    child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(
                          'Curiosité et apprentissage continu:',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                        'volonté d apprendre de nouvelles technologies, de suivre les tendances.'),


                ],
              ),
            ),
          ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bonnes compétences en communication:',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                              'communiquer clairement et efficacement avec les clients.'),


                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pensée créative',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                              'proposer des solutions innovantes et créatives'),


                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )
              : SizedBox(),
        ],
      ),
    );
  }
}

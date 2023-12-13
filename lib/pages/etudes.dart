import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EtudesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mes Études'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'EDUCATION',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.school, size: 30,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.orange,
              ),
              title: Text(
                'Institut Supérieur d\'Études Technologiques de Sfax (ISEt Sfax)',
                style: TextStyle(fontSize: 18),
              ),

              subtitle: Text(
                '2021-2023\nDéveloppement des Systèmes d\'informations',
                style: TextStyle(fontSize: 16),
              ),

            ),
            GestureDetector(
              onTap: () {
                String url = 'https://www.google.fr/maps/place/ISET+Sfax/@34.7572151,10.7695801,17z/data=!3m1!4b1!4m6!3m5!1s0x1301d2c1f3c2991f:0xab7f8817c80e9617!8m2!3d34.7572107!4d10.772155!16s%2Fg%2F1v0bvvtp?entry=ttu';
                launch(url);
              },
              child: Row(
                children: [
                  SizedBox(width: 10), // Ajoute un espace entre la liste et l'image
                  Image.asset('images/maps.jpeg', width: 250, height: 70), // Remplacez le chemin par votre image
                ],
              ),
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.school, size: 30,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.orange,
              ),
              title: Text(
                'Lycée secondaire de Regueb',
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                '2018-2021\nScience expérimentale',
                style: TextStyle(fontSize: 16),
              ),
            ),
            GestureDetector(
              onTap: () {
                String url = 'https://www.google.com/maps/place/Lyc%C3%A9e+Regueb/@34.8608358,9.782802,17z/data=!3m1!4b1!4m6!3m5!1s0x12fefdb464c7588d:0x401ceea529c4d8ed!8m2!3d34.8608314!4d9.7853769!16s%2Fg%2F11crzg184c?entry=ttu';
                launch(url);
              },
              child: Row(
                children: [
                  SizedBox(width: 10), // Ajoute un espace entre la liste et l'image
                  Image.asset('images/maps.jpeg', width: 250, height: 70), // Remplacez le chemin par votre image
                ],
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),


      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/experience');
              },
              icon: Icon(Icons.arrow_back),
              label: Text(''),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).brightness == Brightness.dark
                    ? Colors.black
                    : Colors.orange,
              ),
            ),
            SizedBox(width: 10),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/accueil');
              },
              icon: Icon(Icons.arrow_forward),
              label: Text(''),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).brightness == Brightness.dark
                    ? Colors.black
                    : Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

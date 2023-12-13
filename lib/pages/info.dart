import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationsPersonnellesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // backgroundColor: Colors.blueGrey,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ?Colors.black
            :Colors.blueGrey,
        title: Text(
          'Informations personnelles',
          style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              //color: Colors.blueGrey,
              color: Theme.of(context).brightness == Brightness.dark
                  ?Colors.black
                  :Colors.blueGrey,
              child: Padding(
                padding: EdgeInsets.all(35.0),
                child: Column(
                  children: [
                    Text(
                      'Nadia Bouzayani',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      'images/a2.jpg',
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.cake,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '25/03/2002',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        String url = 'https://www.google.fr/maps/place/Regueb/@34.8596268,9.7676102,15.38z/data=!4m6!3m5!1s0x12fefdb46a07afd7:0xea89ca0127404f48!8m2!3d34.8585605!4d9.7846002!16s%2Fm%2F0b6h72j?entry=ttu';
                        launch(url);
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Sidi Bouzid - Regueb',
                            style: TextStyle(fontSize: 16, color: Colors.white, decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '50624526',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'nadiabouzayani3@gmail.com',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
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
                    Navigator.pushNamed(context, '/accueil');
                  },
                  icon: Icon(Icons.arrow_back),
                  label: Text(''),
                  style: ElevatedButton.styleFrom(
                    //primary: Colors.orange,
                    primary: Theme.of(context).brightness == Brightness.dark
                        ?Colors.black
                        :Colors.orange,
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/experience');
                  },
                  icon: Icon(Icons.arrow_forward),
                  label: Text(''),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).brightness == Brightness.dark
                        ?Colors.black
                        :Colors.orange,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class WhatsappPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp Scanner'),
        ),
        body: Center(
          child: Image.asset(
            'images/whats.jpg',
            width: 600, // Largeur de l'image
            height: 300, // Hauteur de l'image
          ),
        ),

    );
  }
}

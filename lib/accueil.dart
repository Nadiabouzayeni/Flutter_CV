import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:prenom/main.dart';
import 'package:prenom/pages/whatsapp.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'menu/drawer.dart';
import 'theme/theme.dart';

class AccueilPage extends StatefulWidget {


  @override
  _AccueilPageState createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isDarkTheme = false;


  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 100),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [Colors.red, Colors.blue, Colors.green, Colors.yellow];

    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Mon Profil'),
        actions: [
          IconButton(
            icon: Icon(Icons.lightbulb),
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          ),
        ],
      ),



      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return TextLiquidFill(
                  text: 'Développeur full-stack',
                  waveColor: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.blue,
                  boxBackgroundColor: Theme.of(context).brightness == Brightness.dark
                 ?Colors.black
                  :Colors.white,
                  textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: colors[_animationController.value.toInt() % colors.length],
                  ),
                  boxHeight: 100,
                );
              },
            ),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/profil.jpg'),
            ),
            SizedBox(height: 130),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset(
                    'images/facebook_icon.jpg',
                    width: 40,
                    height: 40,
                  ),
                  onPressed: () {
                    // Redirige vers mon compte Facebook
                    String facebookUrl = 'https://www.facebook.com/nadiananouch.bz/';
                    launch(facebookUrl);
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'images/linkedin_icon.jpg',
                    width: 40,
                    height: 40,
                  ),
                  onPressed: () {
                    // Redirige vers mon compte LinkedIn
                    String linkedinUrl = 'https://www.linkedin.com/in/bouzayani-nadia-759734228/';
                    launch(linkedinUrl);
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'images/whatsapp_icon.jpg',
                    width: 40,
                    height: 40,
                  ),
                  onPressed: () {
                    // Ouvre l'application  whatsapp avec votre scanner code
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WhatsappPage()),
                    );
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'images/mail_icon.jpg',
                    width: 40,
                    height: 40,
                  ),
                  onPressed: () {
                    // Ouvre l'application de messagerie avec mon adresse e-mail
                    launch('mailto:nadiabouzayani3@gmail.com?subject=Subject&body=Body');

                  },
                ),

                IconButton(
                  icon: Image.asset(
                    'images/github_icon.jpg',
                    width: 40,
                    height: 40,
                  ),
                  onPressed: () {
                    // Redirige vers mon compte GitHub
                    String GitHubUrl = 'https://github.com/Nadiabouzayeni';
                    launch(GitHubUrl);
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'images/instagram_icon.jpg',
                    width: 40,
                    height: 40,
                  ),
                  onPressed: () {
                    // Redirige vers mon compte Instagram
                    String InstagramUrl = 'https://instagram.com/bouzayaninadia?igshid=aDQxY3ZvMTRveXU2';
                    launch(InstagramUrl);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}

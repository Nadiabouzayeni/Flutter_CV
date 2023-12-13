import 'package:flutter/material.dart';

class CertificatPage extends StatefulWidget {
  @override
  _CertificatPageState createState() => _CertificatPageState();
}

class _CertificatPageState extends State<CertificatPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Certificat'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                InteractiveViewer(
                  child: Image.asset('images/cert2.jpg'),
                  minScale: 0.5,
                  maxScale: 5.0,
                ),
                // Ajoutez les autres images ici
                InteractiveViewer(
                  child: Image.asset('images/cert5.png'),
                  minScale: 0.5,
                  maxScale: 5.0,
                ),
                InteractiveViewer(
                  child: Image.asset('images/cert1.jpg'),
                  minScale: 0.5,
                  maxScale: 5.0,
                ),
                InteractiveViewer(
                  child: Image.asset('images/cert6.png'),
                  minScale: 0.5,
                  maxScale: 5.0,
                ),
                InteractiveViewer(
                  child: Image.asset('images/cert7.png'),
                  minScale: 0.5,
                  maxScale: 5.0,
                ),
                InteractiveViewer(
                  child: Image.asset('images/cert8.png'),
                  minScale: 0.5,
                  maxScale: 5.0,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  if (_currentPage > 0) {
                    _pageController.previousPage(
                      duration: Duration(milliseconds: 5),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  if (_currentPage < 5) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 5),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

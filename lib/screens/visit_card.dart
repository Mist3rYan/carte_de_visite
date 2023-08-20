import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carte_de_visite/widgets/en_savoir_plus_button.dart';
import 'package:carte_de_visite/widgets/photo_profil.dart';

final Uri _url =
    Uri.parse('https://zv5udbcdub5hu3viytzq4g.on.drv.tw/www.mycodeapps.com/');

class VisitCard extends StatelessWidget {
  const VisitCard({super.key});

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: const Text('Ma carte de visite'),
        backgroundColor: const Color(0xff052555),
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff052555), Colors.white60],
            stops: [0.5, 0.5],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            reverse: true,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const PhotoProfil(),
                  const SizedBox(
                    height: 5,
                  ),
                  Card(
                    color: Colors.white,
                    margin: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Text(
                            'Yannick Lannuzel\nFondateur de MYCODEAPPS',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'JosefinSans',
                              fontSize: 25,
                              height: 1.5,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: _launchUrl,
                            child: const Image(
                              image: AssetImage('assets/mycodeapps.png'),
                              height: 100,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const EnSavoirPlusButton()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

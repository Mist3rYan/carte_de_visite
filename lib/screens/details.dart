import 'package:carte_de_visite/widgets/photo_profil.dart';
import 'package:flutter/material.dart';
import 'package:carte_de_visite/widgets/description.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: const Text('En savoir plus'),
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
            child: Container(
              margin: const EdgeInsets.all(15.0),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PhotoProfil(),
                  SizedBox(
                    height: 20,
                  ),
                  Description(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

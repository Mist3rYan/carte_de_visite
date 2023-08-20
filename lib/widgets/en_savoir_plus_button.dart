import 'package:flutter/material.dart';
import 'package:carte_de_visite/screens/details.dart';

class EnSavoirPlusButton extends StatelessWidget {
  const EnSavoirPlusButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff052555),
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return const Details();
        }));
      },
      child: const Text(
        'En savoir plus',
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'JosefinSans',
          color: Colors.white70,
        ),
      ),
    );
  }
}
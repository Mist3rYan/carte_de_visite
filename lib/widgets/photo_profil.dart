import 'package:flutter/material.dart';

class PhotoProfil extends StatelessWidget {
  const PhotoProfil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 83,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 80,
        backgroundImage: AssetImage('assets/portrait.png'),
      ),
    );
  }
}
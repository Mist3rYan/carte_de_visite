import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Text(
          'Diplomé en développement web et mobile, je suis prêt à vous accompagner dans vos projets.\n Je travail avec Flutter, React, Symfony et toutes les technologies du web.\nN\'hésitez pas à me contacter pour plus d\'informations.\n\nmycodeapps@gmail.com',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'JosefinSans',
            fontSize: 18,
            height: 1.5,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

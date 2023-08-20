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
          'Passionné par le développement web et mobile, je suis à votre disposition pour vous accompagner dans vos projets.\nN\'hésitez pas à me contacter pour plus d\'informations.\n\nmycodeapps@gmail.com',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'JosefinSans',
            fontSize: 20,
            height: 1.5,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

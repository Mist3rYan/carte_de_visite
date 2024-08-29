import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import du package url_launcher

class PortfolioButton extends StatelessWidget {
  const PortfolioButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff052555),
        ),
        onPressed: () {
          _openPortfolio();
        },
        child: const Text(
          'Portfolio',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'JosefinSans',
            color: Colors.white70,
          ),
        ),
      ),
    );
  }

  void _openPortfolio() async {
    final Uri url = Uri.parse('https://portfolio-yannick-lannuzel.vercel.app');
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }
}

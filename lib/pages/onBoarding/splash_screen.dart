import 'dart:async';
import 'package:barutemkso_maquette/pages/onBoarding/onbooarding.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Démarrage du timer de 5 secondes
    Timer(Duration(seconds: 10), () {
      // Redirection vers une autre page après 5 secondes (remplace `HomePage()` par ta prochaine page)
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Couleur de fond
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image au centre
            Image.asset('assets/imgs/logo2.png', height: 200.0), // Assure-toi que ton image est dans le dossier assets
            SizedBox(height: 20.0), // Espacement entre l'image et le loader
            // Loader circulaire
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}


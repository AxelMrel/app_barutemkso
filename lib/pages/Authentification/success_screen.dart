import 'package:barutemkso_maquette/pages/Authentification/loginPage/login_screen_page.dart';
import 'package:flutter/material.dart';

class RegistrationSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image au centre (utilise l'image correcte)
            Image.asset(
              'assets/imgs/valider.png', // Remplace par ton image de réussite
              height: 200,
            ),
            SizedBox(height: 30),
            // Titre de confirmation d'inscription
            Text(
              'Inscription Réussie !',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 15),
            // Message de bienvenue
            Text(
              'Bienvenue dans la communauté BarutemKso ! '
              'Vous êtes maintenant prêt à explorer la richesse de la langue '
              'et de la culture Bariba.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 50),
            // Bouton Connexion
            ElevatedButton(
              onPressed: () {
                // Logique pour aller à la page de connexion
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffD45C1A), // Couleur du bouton
                minimumSize: Size(double.infinity, 50), // Largeur complète
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text(
                'Connexion',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



import 'package:barutemkso_maquette/widgets/bottomBar-screen-page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  // Variable pour stocker l'état de la case à cocher
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image en haut
            Image.asset(
              'assets/imgs/cryptage.png', // Assure-toi que l'image est dans le dossier assets
              height: 200,
            ),
            SizedBox(height: 30),

            // Champ Nom complet avec icône et placeholder
            TextField(
              decoration: InputDecoration(
                labelText: 'Nom complet',
                hintText: 'Entrez votre nom complet', // Placeholder
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                suffixIcon: Icon(Icons.person), // Icône à droite
              ),
            ),
            SizedBox(height: 20),

            // Champ Email avec icône et placeholder
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Adresse mail',
                hintText: 'Entrez votre adresse mail', // Placeholder
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                suffixIcon: Icon(Icons.email), // Icône à droite
              ),
            ),
            SizedBox(height: 20),

            // Champ Téléphone avec icône et placeholder
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Téléphone',
                hintText: 'Entrez votre numéro de téléphone', // Placeholder
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                suffixIcon: Icon(Icons.phone), // Icône à droite
              ),
            ),
            SizedBox(height: 20),

            // Champ Mot de passe avec icône et placeholder
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Mot de passe',
                hintText: 'Entrez votre mot de passe', // Placeholder
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                suffixIcon: Icon(Icons.lock), // Icône à droite
              ),
            ),
            SizedBox(height: 20),

            // Bouton "S'inscrire"
            ElevatedButton(
              onPressed: () {
                // Vérifier si les termes et conditions sont acceptés avant de continuer
                if (_acceptTerms) {
                  // Action lors de l'inscription
                  Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Bottom()),
                 );
                  
                } else {
                  // Afficher un message d'erreur ou une alerte
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Erreur"),
                        content: Text("Veuillez accepter les termes et conditions."),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Ferme l'alerte
                            },
                            child: Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffDD5E11),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'S\'inscrire',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 10),

            // Case à cocher pour accepter les termes et conditions
            CheckboxListTile(
              value: _acceptTerms,
              onChanged: (bool? value) {
                _acceptTerms = value!;
              },
              title: const Text(
                "En cochant cette case, vous acceptez nos termes et conditions.",
                style: TextStyle(fontSize: 14),
              ),
              controlAffinity: ListTileControlAffinity.leading, // Position de la case à cocher
            ),
          ],
        ),
      ),
    );
  }
}



import 'package:barutemkso_maquette/widgets/bottomBar-screen-page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image en haut
                Image.asset(
                  'assets/imgs/connexion.png', // Assure-toi que l'image est dans le dossier assets
                  height: 200,
                ),
                const SizedBox(height: 30),
                // Champ Email avec icône et placeholder
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Entrez votre email', // Placeholder
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    suffixIcon: const Icon(Icons.email), // Icône à droite
                  ),
                ),
                const SizedBox(height: 20),
                // Champ Mot de passe avec icône et placeholder
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Mot de passe',
                    hintText: 'Entrez votre mot de passe', // Placeholder
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    suffixIcon: const Icon(Icons.lock), // Icône à droite
                  ),
                ),
                const SizedBox(height: 30),
                // Bouton "Se connecter"
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Bottom()),
                 );
                    
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff0C743F),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Se connecter',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Lien vers l'écran d'inscription
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Pas de compte ?"),
                    TextButton(
                      onPressed: () {
                        
                      },
                      child: const Text(
                        "Se connecter",
                        style: TextStyle(color: Color(0xff0C743F)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Bouton en bas à gauche pour retourner en arrière
          Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Ink(
              decoration: const ShapeDecoration(
                color: Color(0xff0C743F), // La couleur de fond du bouton (ici, vert)
                shape: CircleBorder(),
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white), // L'icône de la flèche avec couleur blanche
                onPressed: () {
                  Navigator.pop(context); // Retour à l'écran précédent
                },
              ),
            ),
          ),
        )

        ],
      ),
    );
  }
}


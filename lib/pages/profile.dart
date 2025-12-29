import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        backgroundColor: const Color(0xff0C743F),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Avatar de profil
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/imgs/profile.png'), // Remplace avec le chemin de ton image de profil
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              'Informations personnelles :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Champ Nom complet
            TextField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Nom complet',
                hintText: 'Aashifa IBRAHIM',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            // Champ Adresse email
            TextField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Adresse email',
                hintText: 'aashifa@gmail.com',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            // Champ Mot de passe
            TextField(
              readOnly: true,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Mot de passe',
                hintText: '********',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.visibility),
                  onPressed: () {
                    // Logique pour afficher le mot de passe si nécessaire
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Bouton pour modifier le profil
            ElevatedButton(
              onPressed: () {
                // Action pour modifier le profil
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff0C743F),
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text(
                'Modifier le profil',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

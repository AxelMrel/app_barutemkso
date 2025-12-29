import 'package:flutter/material.dart';

class PaiementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Action pour retourner
          },
        ),
        title: const Text('Paiement'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/imgs/profile.png'), // Utilise une image pour l'avatar
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/imgs/guide.jpg', // Remplacez par le chemin de votre image
                  width: 150, // Diminue la largeur de l'image
                  height: 150, // Vous pouvez ajouter une hauteur spécifique
                ),
                const SizedBox(width: 10), // Espacement entre l'image et le texte
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Guide des Coutumes\nBariba',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text('Guide culturel'),
                    Text('Prix : 3.000 FCFA'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Mode de paiement :',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20, // Augmentez la taille ici (exemple: 20)
                fontWeight: FontWeight.bold,
              ),
            ),

            ListTile(
              leading: Image.asset('assets/imgs/momo1.png'),
              title: const Text('Mobile money'),
              onTap: () {
                // Implémentez la logique de paiement pour MTN Mobile Money
              },
            ),
            ListTile(
              leading: Image.asset('assets/imgs/pay.png'),
              title: const Text('PayPal'),
              onTap: () {
                // Implémentez la logique de paiement pour PayPal
              },
            ),
            ListTile(
              leading: Image.asset('assets/imgs/moov.png'),
              title: const Text('Moov money'),
              onTap: () {
                // Implémentez la logique de paiement pour Moov Money
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Appelez la fonction de paiement sélectionnée
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff0C743F),
                minimumSize: const Size(200, 50), // Ajustez ici la largeur à 200
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'Payer',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

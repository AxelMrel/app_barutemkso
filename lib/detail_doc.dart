import 'package:barutemkso_maquette/PaiementPage.dart';
import 'package:flutter/material.dart';

class Detail_doc extends StatelessWidget {
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
        title: const Text('Détail document'),
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
            // Conteneur avec boxShadow
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // Déplacement de l'ombre
                  ),
                ],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/imgs/guide.jpg', // Remplacez par le chemin de votre image
                    width: 300,
                    height: 300
                    ,
                  ),
                  const SizedBox(height: 10), // Espacement
                  const Text(
                    'Guide des Coutumes Bariba',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Auteur : Nana Kofi',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  const Text(
                    'Un document détaillé sur les coutumes et pratiques traditionnelles des Bariba, incluant des descriptions de cérémonies et de rituels importants.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20), // Espacement
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Implémentez la logique pour lire/télécharger
                        },
                        icon: const Icon(
                          Icons.download,
                          color: Colors.white, // Change la couleur de l'icône
                        ),
                        label: const Text(
                          'Lire / Télécharger',
                          style: TextStyle(color: Colors.white), // Change la couleur du texte
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff0C743F),
                          minimumSize: const Size(100, 50), // Ajustez ici la largeur
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Implémentez la logique de paiement
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PaiementPage()),
                        );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffDD5E11),
                          minimumSize: const Size(100, 50), // Ajustez ici la largeur
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min, // Ajuste la taille du bouton en fonction du contenu
                          children: [
                            Icon(Icons.payment, color: Colors.white), // Icône ajoutée
                            SizedBox(width: 8), // Espacement entre l'icône et le texte
                            Text(
                              'Payer',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8), // Espacement entre le conteneur et le bouton Modalités d'accès
            ElevatedButton(
              onPressed: () {
                // Affichez les modalités d'accès
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Modalités d\'accès'),
                      content: const Text(
                        'Les modalités d\'accès détaillées seront affichées ici.',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Fermer'),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffF2A677), // La même couleur de fond
                minimumSize: const Size(200, 50), // Vous pouvez ajuster cette taille
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Les mêmes bordures arrondies
                ),
              ),
              child: const Text(
                'Modalités d\'accès',
                style: TextStyle(color: Colors.white), // Couleur du texte
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:barutemkso_maquette/detail_doc.dart';
import 'package:flutter/material.dart';


class CatalogueDocumentsScreen extends StatefulWidget {
  @override
  _CatalogueDocumentsScreenState createState() =>
      _CatalogueDocumentsScreenState();
}

class _CatalogueDocumentsScreenState extends State<CatalogueDocumentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalogue documents'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back navigation
          },
        ),
        actions: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/imgs/profile.png'), // Votre image d'utilisateur
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: 'Catégorie Dom.',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      // Handle category change
                    },
                    items: [
                      const DropdownMenuItem(value: '1', child: Text('Catégorie 1')),
                      const DropdownMenuItem(value: '2', child: Text('Catégorie 2')),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Rechercher',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.search),
                    ),
                    onChanged: (value) {
                      // Handle search
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text(
                  'Résultats :',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.filter_alt),
                  onPressed: () {
                    // Handle filter action
                  },
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildDocumentCard(
                    'Guide des Coutumes Bariba',
                    'Un document exhaustif sur l\'histoire de la région Bariba, comprenant des événements...',
                    'assets/imgs/bariba.jpg',
                    'fcfa 3.000',
                  ),
                  _buildDocumentCard(
                    'Recueil de Poèmes Bariba',
                    'Un document détaillé sur les coutumes et pratiques traditionnelles des Bariba...',
                    'assets/imgs/rider.jpg',
                    'Gratuit',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDocumentCard(
    String title, String description, String imagePath, String price) {
  return Card(
    elevation: 3,
    margin: const EdgeInsets.symmetric(vertical: 8),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    // Handle details button press
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Detail_doc()),
                  );
                  },
                  style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff0C743F),
                          minimumSize: const Size(100, 50), // Ajustez ici la largeur
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                  child: const Text('Voir Détails',style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(height: 8),
                const Divider(), // Séparateur entre le bouton et le prix
                Align(
                  alignment: Alignment.bottomLeft, // Aligne le prix à gauche
                  child: Text(
                    'Prix : $price',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}


}

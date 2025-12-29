import 'package:flutter/material.dart';


class CatalogueScreen extends StatefulWidget {
  @override
  _CatalogueScreenState createState() => _CatalogueScreenState();
}

class _CatalogueScreenState extends State<CatalogueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Domaines'),
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
                  _buildDomainCard(
                    'Culture Bariba',
                    'Un regard approfondi sur les coutumes et pratiques ancestrales des Bariba.',
                    'assets/imgs/afric.jpg',
                    'Les Traditions Bariba',
                    'Mars 2023',
                    'Amina A.',
                    Color(0xff0C743F),
                  ),
                  _buildDomainCard(
                    'Chroniques de Bariba',
                    'Un récit détaillé des événements historiques et des figures influentes de la région Bariba.',
                    'assets/imgs/dahomey.jpg',
                    'Histoire de la Région',
                    'Janvier 2024',
                    'Ibrahim.',
                    Color(0xffDD5E11),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDomainCard(
      String title,
      String description,
      String imagePath,
      String category,
      String date,
      String author,
      Color buttonColor) {
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
                  Row(
                    children: [
                      Text(
                        'Titre : $category \n- Date : $date - Auteur : $author',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                      ),
                      onPressed: () {
                        // Handle details button press
                      },
                      child: const Text('Voir Détails'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

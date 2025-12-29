import 'package:flutter/material.dart';

class DiscussionPage extends StatelessWidget {
  final List<String> discussions = [
    "Préservation des langues africaines",
    "Publier un livre en Bariba - Forum",
    "Fêtes traditionnelles Bariba",
    "Promoteurs BarutemKso",
    "Littérature Bariba et numérique",
    "Enrichir le dictionnaire Bariba",
  ];

  // Liste des chemins d'image pour chaque discussion
  final List<String> images = [
    'assets/imgs/rider.jpg',
    'assets/imgs/bariba.jpg',
    'assets/imgs/foule.jpg',
    'assets/imgs/benin.jpg',
    'assets/imgs/foule.jpg',
    'assets/imgs/foule.jpg',
  ];

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
        title: const Text('Nouvelle discussion'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/imgs/profile.png'), // Utilise une image pour l'avatar
            ),
          )
        ],
        
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
            decoration: InputDecoration(
              hintText: 'Rechercher',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0), // Ajustez la valeur ici
            ),
          ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: discussions.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: ListTile(
                    title: Text(discussions[index]),
                    subtitle: const Text('Forum de discussion'),
                    leading: Image.asset(
                      images[index],
                      width: 50, // Largeur de l'image
                      height: 50, // Hauteur de l'image
                      fit: BoxFit.cover, // Ajuste l'image pour couvrir le cercle
                    ),
                    onTap: () {
                      // Action lors du tap sur une discussion
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

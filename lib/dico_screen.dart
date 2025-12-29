import 'package:barutemkso_maquette/widgets/add_widget.dart';
import 'package:flutter/material.dart';



class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({super.key});

  @override
  _DictionaryScreenState createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  String selectedLanguage = 'Français';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Action pour retourner
          },
        ),
        title: const Text(
          'Dictionnaire',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/imgs/profile.png'), // Utilise une image pour l'avatar
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Container avec une couleur de fond verte
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12), // Réduire le padding vertical
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 187, 180, 180), // Couleur de fond verte
                borderRadius: BorderRadius.circular(10), // Coins arrondis
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LanguageButton(
                    language: 'Français',
                    isSelected: selectedLanguage == 'Français',
                    onTap: () {
                      setState(() {
                        selectedLanguage = 'Français';
                      });
                    },
                  ),
                  const SizedBox(width: 20), // Espace entre les boutons
                  LanguageButton(
                    language: 'Bariba',
                    isSelected: selectedLanguage == 'Bariba',
                    onTap: () {
                      setState(() {
                        selectedLanguage = 'Bariba';
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8), // Réduire l'espace entre le conteneur et le champ de recherche
            TextField(
            decoration: InputDecoration(
              hintText: 'Rechercher',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0), // Ajustez la valeur ici
            ),
          ),

            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  DictionaryItem(
                    word: 'Gando',
                    description: 'Cérémonie traditionnelle de danse et de musique.',
                  ),
                  DictionaryItem(
                    word: 'Timbuktu',
                    description: 'Ville historique et centre de savoir ancien.',
                  ),
                  DictionaryItem(
                    word: 'Yambare',
                    description: 'Terme utilisé pour décrire une saison de récolte.',
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



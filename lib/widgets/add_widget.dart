import 'package:barutemkso_maquette/grando_screen.dart';
import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  final String language;
  final bool isSelected;
  final VoidCallback onTap;

  LanguageButton({
    required this.language,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded( // Utilisation de Expanded pour occuper l'espace disponible
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8), // Ajuster le padding vertical
          decoration: BoxDecoration(
            color: isSelected
                ? Colors.black.withOpacity(0.8)  // Noir légèrement transparent
                : Colors.grey[600],  // Gris plus sombre
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center( // Centrer le texte
            child: Text(
              language,
              style: TextStyle(
                color: isSelected ? Colors.white.withOpacity(0.9) : Colors.white.withOpacity(0.7),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}




class DictionaryItem extends StatelessWidget {
  final String word;
  final String description;

  DictionaryItem({required this.word, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            word,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end, // Aligner à droite
            children: [
              ElevatedButton(
                onPressed: () {
                  // Action pour "Voir Détails"
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GandoScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff0C743F), // couleur du bouton "Voir Détails"
                ),
                child: const Text('Voir Détails'),
              ),
              const SizedBox(width: 10),
              ElevatedButton.icon(
                onPressed: () {
                  // Action pour "Traduire"
                },
                icon: const Icon(Icons.translate),
                label: const Text(
                  'Traduire',
                  style: TextStyle(color: Colors.white), // Couleur du texte du bouton
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffDD5E11), // couleur du bouton "Traduire"
                ),
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
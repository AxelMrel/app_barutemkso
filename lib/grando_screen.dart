import 'package:flutter/material.dart';



class GandoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Gando",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite_border),
                  onPressed: () {
                    // Action pour ajouter aux favoris
                  },
                ),
                const SizedBox(width: 10),
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: () {
                    // Action pour partager
                  },
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 10),
            const Text(
              "Nom",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                    text: "Synonyms: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Festival, Célébration",
                    style: TextStyle(color: Color(0xff0C743F)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "noun (person)",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Le 'Gando' est une cérémonie traditionnelle bariba qui combine musique, danse et chants. C’est un événement social important où les membres de la communauté se rassemblent pour célébrer des occasions spéciales comme des rites de passage ou des fêtes communautaires.",
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  // Action pour le bouton de navigation
                },
                child: const Icon(Icons.arrow_back, color: Colors.white,),
                backgroundColor: Color(0xff0C743F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

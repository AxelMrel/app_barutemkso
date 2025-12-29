import 'package:flutter/material.dart';


class pageDiscussionPage extends StatelessWidget {
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
        title: Text('Préservation des langues africaines'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Action pour la recherche
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Action pour la recherche
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(8.0),
              children: [
                // Remplacez l'URL par le chemin de votre image locale
                Image.asset(
                  'assets/imgs/rider.jpg', // Remplacez par le nom de votre image
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Admirez la grâce du cavalier de Nikki !',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                _buildMessage('Doyen IBRAHIM',
                    'Je suis tout à fait d\'accord !\nUne des solutions serait d\'encourager l\'enseignement des langues locales dans les écoles.',
                    false),
                _buildMessage('Vous',
                    'Je pense que la technologie peut jouer un rôle aussi.',
                    true),
              ],
            ),
          ),
          _buildInputField(),
        ],
      ),
    );
  }

  Widget _buildMessage(String userName, String message, bool isMe) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: isMe ? Colors.green[100] : Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              userName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(message),
            SizedBox(height: 5),
            Text(
              '16:46', // Vous pouvez remplacer cela par l'heure actuelle
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            // Action lors de l'appui sur le bouton "plus"
          },
        ),
        SizedBox(width: 8), // Espacement entre l'icône et le champ de texte
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'En plus de ça, la publica!',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
        SizedBox(width: 8),
        IconButton(
          icon: Icon(Icons.send),
          onPressed: () {
            // Action lors de l'envoi du message
          },
        ),
      ],
    ),
  );
}

}

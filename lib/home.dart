import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<String> imgList = [
    'assets/imgs/bariba.jpg',
    'assets/imgs/benin.jpg',
    'assets/imgs/bariba.jpg',
  ];

  // Liste des textes correspondant aux images
  final List<String> textList = [
    "Histoire du Peuple Bariba",
    "Découvrez la culture béninoise",
    "Exploration des traditions Bariba",
  ];

  final List<String> descriptionList = [
    "Découvrez un ouvrage sur l'histoire et la culture du peuple Bariba, disponible dès maintenant dans notre bibliothèque.",
    "Plongez dans la richesse culturelle du Bénin avec nos ressources.",
    "Explorez les traditions fascinantes du peuple Bariba à travers nos écrits.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Handle drawer or menu action
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/imgs/logo1.png',
                  height: 40,
                ),
              ],
            ),
          ],
        ),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/imgs/profile.png'),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Carousel Slider Section
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayInterval: const Duration(seconds: 3),
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: imgList.asMap().entries.map((entry) {
                int index = entry.key;
                String item = entry.value;
                return Container(
                  child: Center(
                    child: Stack(
                      children: [
                        Image.asset(item, fit: BoxFit.cover, width: 1000),
                        Positioned(
                          bottom: 30,
                          left: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                textList[index], // Texte correspondant à l'image
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                descriptionList[index], // Description correspondante
                                style: const TextStyle(color: Colors.white, fontSize: 14),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff0C743F),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0), // Ajustez ici pour réduire le radius
                                ),
                              ),
                              onPressed: () {
                                // Action sur le bouton Lire plus
                              },
                              child: const Row(
                                mainAxisSize: MainAxisSize.min, // S'assure que le bouton est de taille minimum requise
                                children: [
                                  Text('Lire plus',style: TextStyle(color: Colors.white),),
                                  SizedBox(width: 8.0), // Ajoute un espace entre le texte et l'icône
                                  Icon(Icons.arrow_forward, size: 16.0, color: Colors.white,), // Ajoute une icône flèche vers la droite
                                ],
                              ),
),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 10),

            // Dots Indicator for Carousel
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.map((url) {
                int index = imgList.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? Color(0xff0C743F) : Colors.grey,
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 20),

            // Explore Dictionary Section
           Card(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            elevation: 4,
            color: Colors.grey[300], // Ajoutez la couleur grise ici
            child: ListTile(
              leading: const Icon(Icons.book, color: Color(0xff0C743F)),
              title: const Text("Explorez le Dictionnaire"),
              subtitle: const Text("Des mots en Bariba ou en Français"),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Changer le fond en blanc
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Ajustez ici pour réduire le radius
                  ),
                  // Ajouter une bordure noire si nécessaire
                  side: const BorderSide(color: Colors.black, width: 1.0), // Bordure noire
                ),
                onPressed: () {
                  // Action sur le bouton Découvrir
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min, // S'assure que le bouton ne prend que la place nécessaire
                  children: [
                    Text(
                      'Découvrir',
                      style: TextStyle(color: Color(0xff0C743F)), // Texte en vert
                    ),
                    SizedBox(width: 8.0), // Ajoute un espace entre le texte et l'icône
                    Icon(Icons.arrow_forward, size: 16.0, color: Color(0xff0C743F)), // Icône en vert
                  ],
                ),
              ),
            ),
          ),



            const SizedBox(height: 20),

            // Forum & Publish Books Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: _buildCard(
                      'assets/imgs/test.jpg',
                      'Rejoignez le Forum',
                      'Participez à des discussions avec d\'autres passionnés.',
                      'Découvrir',
                      () {
                        // Action sur le bouton Découvrir du Forum
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: _buildCard(
                      'assets/imgs/perso.jpg',
                      'Publiez vos Livres',
                      'Partagez vos écrits avec la communauté Bariba dès aujourd\'hui.',
                      'Découvrir',
                      () {
                        // Action sur le bouton Découvrir des Livres
                      },
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

  Widget _buildCard(String imagePath, String title, String description, String buttonText, VoidCallback onPressed) {
    return Card(
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath, height: 120, width: double.infinity, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              description,
              style: const TextStyle(fontSize: 14),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff0C743F),
                  foregroundColor: Colors.white, // Couleur du texte en blanc
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Ajustez ici pour réduire le radius
                  ),
                ),
                onPressed: onPressed,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Centre le contenu
                  children: [
                    Text(buttonText), // Texte du bouton
                    SizedBox(width: 8.0), // Espace entre le texte et l'icône
                    Icon(Icons.arrow_forward,color: Colors.white), // Icône de flèche vers la droite
                  ],
                ),
              ),
            )


        ],
      ),
    );
  }
}

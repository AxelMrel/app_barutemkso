import 'package:barutemkso_maquette/catalogue.dart';
import 'package:barutemkso_maquette/dico_screen.dart';
import 'package:barutemkso_maquette/domaine.dart';
import 'package:barutemkso_maquette/home.dart';
import 'package:barutemkso_maquette/pages/dicusion.dart';
import 'package:barutemkso_maquette/pages/profile.dart';
import 'package:flutter/material.dart';


class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int index_color = 0;
  List<Widget> Screen = [ HomePage(),  CatalogueScreen(),DictionaryScreen(),DiscussionScreen(),ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[index_color],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>  CatalogueDocumentsScreen()));
        },
        backgroundColor: const Color(0xff0C743F),
        child: const Icon(Icons.shopping_cart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(
                icon: Icons.home,
                label: 'Home',
                index: 0,
              ),
              _buildNavItem(
                icon: Icons.storage,
                label: 'Stats',
                index: 1,
              ),
              const SizedBox(width: 10), // Espace entre les icônes
              _buildNavItem(
                icon: Icons.book,
                label: 'Dico',
                index: 2,
              ),
              _buildNavItem(
                icon: Icons.forum,
                label: 'Forum',
                index: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({required IconData icon, required String label, required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          index_color = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 24, // Taille de l'icône réduite
            color: index_color == index ? const Color(0xff0C743F) : Colors.black,
          ),
          Text(
            label,
            style: TextStyle(
              color: index_color == index ? const Color(0xff0C743F) : Colors.black,
              fontSize: 12, // Taille de la police pour le texte
            ),
          ),
        ],
      ),
    );
  }
}

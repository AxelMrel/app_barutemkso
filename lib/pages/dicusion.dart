import 'package:barutemkso_maquette/notification.dart';
import 'package:barutemkso_maquette/pages/new_disc.dart';
import 'package:barutemkso_maquette/pages/page.dart';
import 'package:flutter/material.dart';


class DiscussionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discussion'),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/imgs/profile.png'), // Remplacez par l'image de profil
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: <Widget>[
            _buildGridItem(
              context,
              color: Color(0xff0C743F),
              icon: Icons.chat,
              text: 'Nouvelle discussion',
              route: DiscussionPage(),
            ),
            _buildGridItem(
              context,
              color: Color(0xffDD5E11),
              icon: Icons.notifications,
              text: 'Messages',
              route: pageDiscussionPage(),
            ),
            _buildGridItem(
              context,
              color: Color(0xff1A4E7D),
              icon: Icons.history,
              text: 'Historique',
              route: NotificationPage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, {required Color color, required IconData icon, required String text, required Widget route}) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: InkWell(
        onTap: () {
          // Action pour chaque bouton
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route),
        );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, color: Colors.white, size: 40.0),
            const SizedBox(height: 10.0),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

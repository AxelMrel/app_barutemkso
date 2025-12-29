import 'package:flutter/material.dart';


class NotificationPage extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {
      'title': 'Préservation des langues africaines',
      'message': 'Good morning, did you sleep well?',
      'date': 'Today',
      'icon': 'assets/imgs/bariba.jpg', // Remplacez par votre image
    },
    {
      'title': "L'évolution de la langue Bariba",
      'message': 'How is it going?',
      'date': '17/6',
      'icon': 'assets/imgs/benin.jpg',
    },
    {
      'title': 'Partage d’histoires orales Bariba',
      'message': 'How is it going?',
      'date': '17/6',
      'icon': 'assets/imgs/benin.jpg',
    },
    {
      'title': 'Publier un livre en Bariba - Forum',
      'message': 'Aight, noted',
      'date': '17/6',
      'icon': 'assets/imgs/bariba.jpg',
    },
    {
      'title': 'Littérature Bariba et numérique',
      'message': 'How is it going?',
      'date': '17/6',
      'icon': 'assets/imgs/benin.jpg',
    },
    {
      'title': 'Traduire les idiomes Bariba',
      'message': 'Good morning, did you sleep well?',
      'date': 'Today',
      'icon': 'assets/imgs/bariba.jpg',
    },
    {
      'title': 'Fêtes traditionnelles Bariba',
      'message': 'Good morning, did you sleep well?',
      'date': 'Today',
      'icon': 'assets/imgs/rider.jpg',
    },
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
        title: Text('Notifications'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/imgs/profile.png'), // Utilise une image pour l'avatar
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(notification['icon']!),
            ),
            title: Text(notification['title']!),
            subtitle: Text(notification['message']!),
            trailing: Text(notification['date']!),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          );
        },
      ),
    );
  }
}

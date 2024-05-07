import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('pp.png'),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset('fb.png', width: 30),
              Image.asset('lk.png', width: 50),
              Image.asset('X.png', width: 30),
            ],
          ),
          SizedBox(height: 40),
          Divider(
            color: Colors.grey[300],
            thickness: 1,
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: IconTextItem(icon: Icons.work, text: "Wangarden"),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: IconTextItem(icon: Icons.home, text: "Paris"),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: IconTextItem(icon: Icons.school, text: "MyDigitalSchool"),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.person, size: 24),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Je suis un jeune développeur web & mobile de 19 ans et voici mon CV version mobile réalisé grâce à Flutter",
                      style: TextStyle(fontSize: 16),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class IconTextItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconTextItem({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 10), // Espacement vertical entre les éléments
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.start, // Alignement à gauche dans la rangée
        children: [
          Icon(icon, size: 30), // Icône
          SizedBox(width: 10), // Espacement entre l'icône et le texte
          Text(text, style: TextStyle(fontSize: 18)), // Texte
        ],
      ),
    );
  }
}

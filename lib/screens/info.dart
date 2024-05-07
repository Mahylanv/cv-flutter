import 'package:flutter/material.dart';

// Les données fictives pour la démonstration
List<Map<String, dynamic>> items = [
  {
    "img": "sejour.jpeg",
    "title": "Sejours à l'etranger",
    "description":
        "Chaque destination a laissé une empreinte indélébile sur ma vie. De l'effervescence des marchés au Sénégal à la tranquillité des rizières en terrasse au Vietnam, chaque expérience a élargi mon horizon et enrichi ma compréhension du monde. Naviguer entre les diverses cultures et langues de l'Indonésie, du Maroc, de la Tunisie, et des nombreuses nations européennes a transformé ma perspective, m'enseignant non seulement sur l'histoire et la géographie, mais aussi sur la résilience et la beauté de l'interaction humaine. Ce voyage n'était pas juste un périple à travers des continents, mais une véritable aventure à la découverte de moi-même.",
  },
  {
    "img": "sport-.jpg",
    "title": "Le sport",
    "description":
        "La passion du sport a toujours été le fil conducteur de ma vie. Que ce soit l'adrénaline des Grands Prix de Formule 1, l'émotion brute des matchs de football, la persévérance des longues courses ou la force brute du rugby, chaque sport m'apporte une leçon de vie unique. À travers eux, j'ai appris la discipline, le travail d'équipe, et la poursuite constante de l'excellence. Les weekends de course, les soirées de matchs, les matins frais de jogging, et les après-midis brumeux sur le terrain de rugby sont bien plus que des hobbies; ce sont des moments qui définissent qui je suis.",
  },
  {
    "img": "photo.jpg",
    "title": "Photographie",
    "description":
        "La photographie de paysage est bien plus qu'un passe-temps pour moi ; c'est une véritable quête de beauté et de silence. Chaque sortie avec mon appareil est une aventure où je cherche à capturer l'essence éphémère de la nature. Que ce soit l'immensité d'un désert sous un ciel étoilé, la tranquillité d'un lac au lever du soleil, ou la majesté d'une montagne enveloppée de brume, chaque cliché est un poème visuel. À travers mon objectif, j'essaie de saisir ces moments de pureté qui parlent silencieusement de la grandeur du monde qui nous entoure.",
  },
  {
    "img": "3D.jpg",
    "title": "Création 3D",
    "description":
        "Plonger dans le monde de la création 3D a ouvert des portes vers des univers où l'imagination n'a pas de limites. Que je sculpte des environnements fantastiques dans Blender, anime des personnages dans Unreal Engine ou développe des jeux interactifs avec Unity, chaque projet est une aventure excitante où je façonne la réalité à mon image. Cette passion pour la modélisation 3D et la conception de mondes virtuels est devenue une expression de ma créativité la plus profonde, me permettant de transformer des visions abstraites en expériences palpables et immersives. C'est une quête sans fin pour l'innovation et la beauté, une danse entre l'art et la technologie.",
  },
  {
    "img": "dev.jpg",
    "title": "Développement",
    "description":
        "Le développement web est pour moi une toile infinie où je peux exprimer ma créativité et résoudre des problèmes de manière innovante. Chaque ligne de code est une opportunité de construire quelque chose de nouveau, de transformer une page blanche en une expérience riche et dynamique pour les utilisateurs. Que ce soit en créant des sites interactifs, en optimisant des interfaces utilisateur ou en développant des applications web complexes, chaque projet est un défi captivant. Cela ne se limite pas à écrire du code; c'est une manière de réfléchir, de planifier et de collaborer pour rendre le web plus accessible et agréable pour tous. Ma passion pour le développement web est une quête continue d'apprentissage, d'adaptation et de création d'impact à travers la technologie.",
  },
];

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Liste déroulante")),
      body: ListContent(),
    ),
  ));
}

class ListContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        var item = items[index];
        return Column(
          children: <Widget>[
            Image.asset(
              item["img"],
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                item["title"],
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                item["description"],
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import '../competencesData.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("School Data Display")),
      body: SingleChildScrollView(
        child: CategoryDisplay(),
      ),
    ),
  ));
}

class CategoryDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategorySection(title: "Front", data: front),
        CategorySection(title: "Back", data: back),
        CategorySection(title: "Mobile", data: mobile),
      ],
    );
  }
}

class CategorySection extends StatelessWidget {
  final String title;
  final List<Map<String, String>> data;

  const CategorySection({
    Key? key,
    required this.title,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ),
        Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: data.map((item) => ImageDisplay(item)).toList(),
        ),
      ],
    );
  }
}

class ImageDisplay extends StatelessWidget {
  final Map<String, String> item;

  const ImageDisplay(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: EdgeInsets.all(5),
      child: Image.asset(item["img"]!, fit: BoxFit.cover),
    );
  }
}

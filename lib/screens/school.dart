import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../schoolData.dart';

class SchoolScreen extends StatelessWidget {
  const SchoolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          FirstList(),
        ],
      ),
    );
  }
}

class FirstList extends StatelessWidget {
  const FirstList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.0,
      child: ListView.builder(
          itemCount: values.length,
          itemBuilder: (BuildContext ctxt, int index) {
            var article = values[index];
            return ListTile(
              leading: Image.asset("${article["img"]}"),
              title: Text(article["name"]),
              subtitle: Text(article["description"]),
            );
          }),
    );
  }
}

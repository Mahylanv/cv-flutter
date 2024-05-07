import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../xpData.dart';

class xpScreen extends StatelessWidget {
  const xpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          itemCount: xp.length,
          itemBuilder: (BuildContext ctxt, int index) {
            var article = xp[index];
            return Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                leading: Image.asset(article["img"]),
                title: Text(article["name"]),
                subtitle: Text(article["description"]),
              ),
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:cv/screens/device.dart';
import 'screens/device.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.light,
        scaffoldBackgroundColor: Color.fromARGB(255, 175, 177, 189),
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        body: Center(
          child: DeviceScreen(),
        ),
      ),
    );
  }
}

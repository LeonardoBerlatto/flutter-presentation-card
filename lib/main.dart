import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final double radiusUnitsToACircle = 50.0;
  static final String pathToProfilePicture = 'assets/profile_picture.jpeg';
  static final String defaultName = 'Leonardo Berlatto';
  static final String defaultJobTitle = 'Fullstak Developer';
  static final String defaultPhoneNumber = '+55 51 997879607';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: radiusUnitsToACircle,
                backgroundImage: AssetImage(pathToProfilePicture),
              ),
              Text(
                defaultName,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                defaultJobTitle,
                style: TextStyle(
                    color: Colors.teal.shade100,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5),
              )
            ],
          ),
        ),
      ),
    );
  }
}

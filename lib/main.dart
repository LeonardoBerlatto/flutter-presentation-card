import 'package:flutter/material.dart';
import 'package:mi_card/components/info-card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final double radiusUnitsToACircle = 50.0;
  static final String pathToProfilePicture = 'assets/profile_picture.jpeg';
  static final String defaultName = 'Leonardo Berlatto';
  static final String defaultJobTitle = 'Fullstack Developer';
  static final String defaultPhoneNumber = '+55 51 997879607';
  static final String defaultEmail = 'leoberlatto@gmail.com';

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
                defaultJobTitle.toUpperCase(),
                style: TextStyle(
                    color: Colors.teal.shade100,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5),
              ),
              Container(
                constraints: BoxConstraints.expand(
                  height: 10,
                  width: 150
                ),
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              InfoCard(defaultPhoneNumber, Icons.phone),
              InfoCard(defaultEmail, Icons.mail),
            ],
          ),
        ),
      ),
    );
  }
}

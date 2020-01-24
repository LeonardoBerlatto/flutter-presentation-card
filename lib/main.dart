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
  static final String defaultEmail = 'leoberlatto@gamil.com';

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
              SizedBox(
                height: 10,
                width: 160,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal[700],
                      ),
                      title: Text(
                        defaultPhoneNumber,
                        style: TextStyle(color: Colors.teal[700]),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.teal[700],
                      ),
                      title: Text(
                        defaultEmail,
                        style: TextStyle(color: Colors.teal[700]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

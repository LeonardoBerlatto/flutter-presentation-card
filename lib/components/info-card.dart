import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String info;
  final IconData icon;

  const InfoCard(this.info, this.icon);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              this.icon,
              color: Colors.teal[700],
            ),
            title: Text(
              this.info,
              style: TextStyle(color: Colors.teal[700]),
            ),
          ),
        ],
      ),
    );
  }
}

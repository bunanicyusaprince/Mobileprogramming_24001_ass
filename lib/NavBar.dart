import 'package:sidebar/CalculatorScreen.dart';
import 'package:sidebar/prince/About.dart';
import 'package:sidebar/prince/Welcome.dart';
import 'package:sidebar/prince/Contact.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Welcome()));
            },
          ),
          ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Calculator'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CalculatorScreen()));
              }),
          ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              }),
              ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Contact()));
              }),
        ],
      ),
    );
  }
}

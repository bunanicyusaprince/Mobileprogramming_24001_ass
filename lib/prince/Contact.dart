import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        backgroundColor: Color.fromARGB(255, 95, 95, 86),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.email),
              title: Text('EMAIL'),
              subtitle: Text('princedre@gmail.com'),
              onTap: () {
                // Handle tapping on the email
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('CALL'),
              subtitle: Text('+250 788887890'),
              onTap: () {
                // Handle tapping on the phone number
              },
            ),
          ],
        ),
      ),
    );
  }
}

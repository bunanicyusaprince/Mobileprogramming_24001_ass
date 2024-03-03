import 'package:sidebar/NavBar.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color.fromARGB(255, 92, 92, 92),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'WELCOME HERE THIS IS THE WELCOME PAGE',
              style: TextStyle(
                fontSize: 24, // Adjust the font size as needed
                fontWeight: FontWeight.bold, // Make the text bold
              ),
            ),
            SizedBox(
                height: 20), // Add some space between the text and the image
            Image.network(
              'https://static.vecteezy.com/system/resources/previews/010/925/778/non_2x/colorful-welcome-design-template-free-vector.jpg',
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}

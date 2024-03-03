import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Color.fromARGB(255, 78, 78, 74),
      ),
      body: Center(
          child: Column(
        children: [
          Image.network(
            'https://writingwhenblue.files.wordpress.com/2014/12/about-me-image-website.jpg', // Replace 'welcome_image.png' with your image asset path
            width: 300,
            // Adjust the width as needed
          ),
          Text(
            'I am a highly skilled software developer known for their dedication and expertise in various programming languages. With a solid background in software engineering, they demonstrate exceptional problem-solving abilities and a keen interest in keeping up with the latest developments in the industry. Their collaborative nature shines through in their work within cross-functional teams, consistently delivering top-notch web applications.',
            style: TextStyle(
              fontSize: 24, // Adjust the font size as needed
              fontWeight: FontWeight.bold, // Make the text bold
            ),
          ),
          SizedBox(height: 20),
        ],
      )),
    );
  }
}

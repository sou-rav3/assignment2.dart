import 'package:flutter/material.dart';

void main() {
  runApp(AssignmentApp());
}

class AssignmentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greeting App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GreetingPage(),
    );
  }
}

class GreetingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Greeting App',
        style: TextStyle(
        color: Colors.black),)

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(
              'Hello, World!',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),

            Text(
              'Welcome to Flutter!',
              style: TextStyle(fontSize: 20),
            ),
            // Image
            SizedBox(height: 20),
            Image.asset(
              'assets/images/logo.png',
               height: 150,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Button Pressed!'),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Button color
              ),
              child: Text('Press Me',
                style: TextStyle(
                  color: Colors.white70),
            ),),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Flutter App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First Flutter App'),
          centerTitle: true, // centers the title text
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // centers widgets vertically
            children: [
              const Text(
                'Welcome to my Flutter App!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20), // adds space between widgets

              ElevatedButton(
                onPressed: () {
                  print('Button clicked!'); // prints message in console
                },
                child: const Text('Click Me'),
              ),

              const SizedBox(height: 20), // more spacing

              Image.network(
                'https://flutter.dev/images/flutter-logo-sharing.png',
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

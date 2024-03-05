import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 211, 109, 230),
          title: const Text('Flutter Widget Playground'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Hello, Flutter!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                // Add your button action here
              },
              child: const Text('Elevated Button'),
            ),
            IconButton(
              onPressed: () {
                // Add your button action here
              },
              icon: Icon(Icons.favorite),
              color: Colors.red,
            ),
          ],
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.blue,
            child: Text(
              'Tap me!',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 20),
        const TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            labelText: 'Type something...',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 120,
              width: 120,
              color: Color.fromARGB(255, 59, 255, 209),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.black26,
            ),
            Container(
              width: 90,
              height: 90,
              color: Color.fromARGB(255, 214, 221, 92),
            ),
            Text(
              'Stacked Text',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}

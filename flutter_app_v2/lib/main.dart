import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
            centerTitle: true,
            backgroundColor: Colors.red[600],
          ),
          body: Center(
            child: Text('Hello Guys! My name is Vedant',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Colors.grey[600],
                  fontFamily: 'IndieFlower'
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Text('Click'),
            backgroundColor: Colors.red[600],
          ),
        )
    );
  }
}


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Container(
          child: Column(
            children: [
              CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      NetworkImage('https://via.placeholder.com/150')),
              Text("Abhay Raj Singh"),
              Text("Full stack developer"),
              Card(
                margin: EdgeInsets.symmetric(),
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("+91 86zz xxxx yy"),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(),
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text("abhayraja4@gmail.com"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login UI',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        appBar: AppBar(
          title: Text('Login UI', style: TextStyle(fontSize: 25)),
        ),
        body: Center(
          child: SizedBox(
            height: 100,
            width: 370,
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Enter your email',
                  labelStyle: TextStyle(fontSize: 28, color: Colors.black),
                  border: OutlineInputBorder()
              ),
              onSubmitted: null
            ),
          )
        ),
      )
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login UI',
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
        home: Scaffold(
          backgroundColor: Colors.white.withOpacity(0.7),
          appBar: AppBar(
            title: Text('Login UI', style: TextStyle(fontSize: 25)),
          ),
          body: Center(
              child: SizedBox(
                height: 100,
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Enter your password',
                      labelStyle: TextStyle(fontSize: 28, color: Colors.black),
                      border: OutlineInputBorder()
                  ),
                ),
              )
          ),
        )
    );
  }

}
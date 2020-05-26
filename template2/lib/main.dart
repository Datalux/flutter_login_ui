import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login UI',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
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
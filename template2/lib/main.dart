import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  void submit(context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondPage()),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
        home: Scaffold(
          backgroundColor: Colors.white.withOpacity(0.9),
          appBar: AppBar(
            title: Text('Login UI', style: TextStyle(fontSize: 25)),
          ),
          body: Builder(
            builder: (context) => Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                          decoration: InputDecoration(
                              labelText: 'Enter your email',
                              labelStyle: TextStyle(fontSize: 22, color: Colors.black),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12.0))
                              )
                          ),
                          onSubmitted: (String str){
                            submit(context);
                          }
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          color: Colors.transparent,
                          splashColor: Colors.black12,
                          onPressed: () {
                            submit(context);
                          },
                          child: Text(
                            'NEXT',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
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
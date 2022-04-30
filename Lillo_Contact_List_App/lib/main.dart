import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Contact List App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Simple Contact List App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController name_controller = TextEditingController();
  TextEditingController number_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Contact List App"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: name_controller,
              decoration: InputDecoration(
                labelText: "Contact Name",
                hintText: "Enter Contact Name",
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black
                )
              ),
              keyboardType: TextInputType.name,
              obscureText: false, // Hides Input
              //maxLength: 50, // Limits Character
            ),
            TextField(
              controller: number_controller,
              decoration: InputDecoration(
                  labelText: "Mobile Number",
                  hintText: "Enter Mobile Number",
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black
                  )
              ),
              keyboardType: TextInputType.phone,
              obscureText: false, // Hides Input
            ),
            TextField(
              controller: email_controller,
              decoration: InputDecoration(
                  labelText: "Email Address",
                  hintText: "Enter Email Address",
                  labelStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black
                  )
              ),
              keyboardType: TextInputType.emailAddress,
              obscureText: false, // Hides Input
            ),
            SizedBox(
              height: 25,
            ),
            RaisedButton(onPressed: (){
              print("Contact Name: " + name_controller.text);
              print("Mobile Number: " + number_controller.text);
              print("Email Address: " + email_controller.text);
            },
            child: const Text(
                "Submit",
              style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

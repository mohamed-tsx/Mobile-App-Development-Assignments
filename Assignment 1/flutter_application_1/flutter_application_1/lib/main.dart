import 'package:flutter/material.dart';

void main() => runApp(myapp());

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.yellow ,
          appBar: AppBar(
            title: const Text('Assingment Ch04_p ',color:Colors.green),
          ),
          body: Padding(padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center, 
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: "Enter you text: "
                ,border: OutlineInputBorder(),
                ),
              )
          ),

            ],
          ),))
} 
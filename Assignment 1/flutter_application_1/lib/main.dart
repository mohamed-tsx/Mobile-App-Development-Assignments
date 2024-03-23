import 'package:flutter/material.dart';

void main() => runApp(myapp());

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Assingment Ch04_p'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Image(
                  image: AssetImage('sawri.timir.png'),
                ),
                const Icon(
                  Icons.library_books,
                  size: 100,
                  color: Colors.red,
                ),
                const Text(
                  "Chabter four basic widgets!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text("chabter 04 class assignment using basic widgets."),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(onPressed: () {}, child: Text("Click here"))
              ],
            ),
          )),
    );
  }
}
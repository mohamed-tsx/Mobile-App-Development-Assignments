import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("Personal Info"),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
        width: 250,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.yellow),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/simad.png",
                width: 100,
                height: 150,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                "images/mogadishu.jpg",
                width: 100,
                height: 150,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Name: Mohamed Mohamud Ali",
            style: TextStyle(fontSize: 15),
          ),
          RichText(
            text: TextSpan(
                text: "Telephone:",
                style: TextStyle(color: Colors.green),
                children: <TextSpan>[
                  TextSpan(
                      text: "252619880131", style: TextStyle(color: Colors.red))
                ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Call Now:"), Icon(Icons.call)],
          ),
          ElevatedButton(onPressed: () => {}, child: Text("View"))
        ]),
      )),
    );
  }
}

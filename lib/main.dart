import 'package:flutter/material.dart';
import "package:flare_flutter/flare_actor.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Weather App",
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20.0),

                    Container(
                   child: FlareActor(
                        "assets/WorldSpin.flr",
                        fit: BoxFit.contain,
                        animation: "roll", 
                      ),
                      height: 300,
                       width: 300,
                    ),

                    SizedBox(height: 10.0,),

                    Text("Search",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),

                    SizedBox(height: 10.0,),

                    Text("Instantly",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 40.0,
                    ),
                    ),

                    SizedBox(height: 10.0,),

                    ListTile(
                      leading: Icon(Icons.search),
                        title: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search here",
                        ),
                      ),
                    ),

                    SizedBox(height: 15.0,),


                    RaisedButton(
                      child: Text("Search"),
                      color: Colors.blueAccent, 
                      onPressed: () {},
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
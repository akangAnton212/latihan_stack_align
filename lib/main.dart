import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Stack And Align"),
        ),
        body: Stack(
          children: <Widget>[
            //ada 3 lapisan, yang ke 1 background, ke 2 listview  yang ke 3 buttonnya
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.blue,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.purple,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.pink,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text("Ini Adalah Text yang dilapisan tengah dari stack", style: TextStyle(
                        fontSize: 30
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text("Ini Adalah Text yang dilapisan tengah dari stack", style: TextStyle(
                        fontSize: 30
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text("Ini Adalah Text yang dilapisan tengah dari stack", style: TextStyle(
                        fontSize: 30
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text("Ini Adalah Text yang dilapisan tengah dari stack", style: TextStyle(
                        fontSize: 30
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Text("Ini Adalah Text yang dilapisan tengah dari stack", style: TextStyle(
                        fontSize: 30
                      )),
                    ),
                  ],
                )
              ],
            ),
            Align(
                alignment: Alignment(0.9, 0.9),
                child: RaisedButton(
                child: Text("My Button"),color: Colors.white, onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: TicTacToePage(),
  ));
}

class TicTacToePage extends StatefulWidget {
  @override
  _TicTacToePageState createState() => _TicTacToePageState();
}

class _TicTacToePageState extends State<TicTacToePage> {
  Widget gameCube() {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                  child: Container(
                color: Color(0xFF848AC1),
                margin: EdgeInsets.all(8),
              )),
              Expanded(
                  child: Container(
                color: Color(0xFF848AC1),
                margin: EdgeInsets.all(8),
              )),
              Expanded(
                  child: Container(
                color: Color(0xFF848AC1),
                margin: EdgeInsets.all(8),
              )),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                  child: Container(
                color: Color(0xFF848AC1),
                margin: EdgeInsets.all(8),
              )),
              Expanded(
                  child: Container(
                color: Color(0xFF848AC1),
                margin: EdgeInsets.all(8),
              )),
              Expanded(
                  child: Container(
                color: Color(0xFF848AC1),
                margin: EdgeInsets.all(8),
              )),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                  child: Container(
                color: Color(0xFF848AC1),
                margin: EdgeInsets.all(8),
              )),
              Expanded(
                  child: Container(
                color: Color(0xFF848AC1),
                margin: EdgeInsets.all(8),
              )),
              Expanded(
                  child: Container(
                color: Color(0xFF848AC1),
                margin: EdgeInsets.all(8),
              )),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2F398B),
      body: SafeArea(child: gameCube()),
    );
  }
}

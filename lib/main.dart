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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: OneBox(),
              ),
              Expanded(
                child: OneBox(),
              ),
              Expanded(
                child: OneBox(),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: OneBox(),
              ),
              Expanded(
                child: OneBox(),
              ),
              Expanded(
                child: OneBox(),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: OneBox(),
              ),
              Expanded(
                child: OneBox(),
              ),
              Expanded(
                child: OneBox(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD6AA7C),
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/tictactoe2.png'), fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(6),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Tic-Tac-Toe",
                  style: TextStyle(fontSize: 45, color: Colors.white),
                ),
              ),
              flex: 2,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(6),
                alignment: Alignment.topCenter,
                child: Text(
                  "Player X Move",
                  style: TextStyle(
                      fontSize: 25, color: Colors.white.withOpacity(0.6)),
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: gameCube(),
              flex: 6,
            ),
            Expanded(
              child: Visibility(
                child: Row(
                  children: <Widget>[
                    Spacer(),
                    Container(
                      alignment: Alignment.topCenter,
                      child: FlatButton(
                        color: Color(0xFF848AC1),
                        onPressed: () {},
                        child: Text("Reset",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white)),
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ),
              flex: 2,
            )
          ],
        ),
      )),
    );
  }
}

class OneBox extends StatelessWidget {
  final Widget buttonChild;
  OneBox({this.buttonChild = const Text('test')});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: buttonChild,
        color: Colors.white.withOpacity(0.5),
        onPressed: () {},
      ),
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}

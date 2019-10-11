import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MaterialApp(
    home: TicTacToePage(),
  ));
}

enum Player { x, o }

class TicTacToePage extends StatefulWidget {
  @override
  _TicTacToePageState createState() => _TicTacToePageState();
}

class _TicTacToePageState extends State<TicTacToePage> {
  String currentPlayer = 'X';
  Icon playerXIcon = Icon(
    Icons.close,
    size: 50,
  );
  Icon playerOIcon = Icon(
    Icons.all_out,
    size: 50,
  );

  List<List<Icon>> board = [
    //empty list of icons
    [null, null, null],
    [null, null, null],
    [null, null, null]
  ];

  Icon playerIcon = null;

  void updateIcon(String x) {
    // simple function to update icon and also change value of current player
    if (x == "X") {
      currentPlayer = 'O';
      playerIcon = playerXIcon;
    } else if (x == "O") {
      playerIcon = playerOIcon;
      currentPlayer = 'X';
    }
  }

  void winnerPopup() {
    if (winner(board, playerIcon)) {
      Alert(
        context: context,
        title: "game Over",
        desc: "$currentPlayer won",
        buttons: [
          DialogButton(
            child: Text(
              "Restart",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {
              board = [
                [null, null, null],
                [null, null, null],
                [null, null, null]
              ];
              setState(() {});
              return Navigator.pop(context);
            },
            width: 120,
          )
        ],
      ).show();
      currentPlayer = "X";
      playerIcon = null;
    }
  }

//function to check winner, which takes in board and Icon as input
  bool winner(List<List<Icon>> board, Icon x) {
    if (board[0][0] == x && board[0][1] == x && board[0][2] == x) {
      print("$x won");
      return true;
    } else if (board[1][0] == x && board[1][1] == x && board[1][2] == x) {
      print("$x won");
      return true;
    } else if (board[2][0] == x && board[2][1] == x && board[2][2] == x) {
      print("$x won");
      return true;
    } else if (board[0][0] == x && board[1][0] == x && board[2][0] == x) {
      print("$x won");
      return true;
    } else if (board[0][1] == x && board[1][1] == x && board[2][1] == x) {
      print("$x won");
      return true;
    } else if (board[0][2] == x && board[1][2] == x && board[2][2] == x) {
      print("$x won");
      return true;
    } else if (board[0][0] == x && board[1][1] == x && board[2][2] == x) {
      print("$x won");
      return true;
    } else if (board[0][2] == x && board[1][1] == x && board[2][0] == x) {
      print("$x won");
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD6AA7C),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/tictactoe03.jpg'), fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(6),
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Tic-Tac-Toe",
                  style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontFamily: 'Quicksand'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(6),
                alignment: Alignment.topCenter,
                child: Text(
                  "Player $currentPlayer Move",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white.withOpacity(0.6),
                      fontFamily: 'Quicksand'),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: OneBox(
                              buttonChild: board[0][0],
                              onTap: () {
                                if (currentPlayer == "X") {
                                  board[0][0] = playerXIcon;
                                } else if (currentPlayer == "O") {
                                  board[0][0] = playerOIcon;
                                }
                                winnerPopup();
                                if (currentPlayer == 'X') {
                                  currentPlayer = 'O';
                                } else {
                                  currentPlayer = 'X';
                                }
                                setState(() {});
                              },
                            ),
                          ),
                          Expanded(
                            child: OneBox(
                              buttonChild: board[0][1],
                              onTap: () {
                                if (currentPlayer == "X") {
                                  board[0][1] = playerXIcon;
                                  currentPlayer = 'O';
                                } else if (currentPlayer == "O") {
                                  board[0][1] = playerOIcon;
                                  currentPlayer = 'X';
                                }
                                setState(() {});
                              },
                            ),
                          ),
                          Expanded(
                            child: OneBox(
                              buttonChild: board[0][2],
                              onTap: () {
                                if (currentPlayer == "X") {
                                  board[0][2] = playerXIcon;
                                  currentPlayer = 'O';
                                } else if (currentPlayer == "O") {
                                  board[0][2] = playerOIcon;
                                  currentPlayer = 'X';
                                }
                                setState(() {});
                              },
                            ),
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
                            child: OneBox(
                              buttonChild: board[1][0],
                              onTap: () {
                                if (currentPlayer == "X") {
                                  board[1][0] = playerXIcon;
                                  currentPlayer = 'O';
                                } else if (currentPlayer == "O") {
                                  board[1][0] = playerOIcon;
                                  currentPlayer = 'X';
                                }
                                setState(() {});
                              },
                            ),
                          ),
                          Expanded(
                            child: OneBox(
                              buttonChild: board[1][1],
                              onTap: () {
                                if (currentPlayer == "X") {
                                  board[1][1] = playerXIcon;
                                  currentPlayer = 'O';
                                } else if (currentPlayer == "O") {
                                  board[1][1] = playerOIcon;
                                  currentPlayer = 'X';
                                }
                                setState(() {});
                              },
                            ),
                          ),
                          Expanded(
                            child: OneBox(
                              buttonChild: board[1][2],
                              onTap: () {
                                if (currentPlayer == "X") {
                                  board[1][2] = playerXIcon;
                                  currentPlayer = 'O';
                                } else if (currentPlayer == "O") {
                                  board[1][2] = playerOIcon;
                                  currentPlayer = 'X';
                                }
                                setState(() {});
                              },
                            ),
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
                            child: OneBox(
                              buttonChild: board[2][0],
                              onTap: () {
                                if (currentPlayer == "X") {
                                  board[2][0] = playerXIcon;
                                  currentPlayer = 'O';
                                } else if (currentPlayer == "O") {
                                  board[2][0] = playerOIcon;
                                  currentPlayer = 'X';
                                }
                                setState(() {});
                              },
                            ),
                          ),
                          Expanded(
                            child: OneBox(
                              buttonChild: board[2][1],
                              onTap: () {
                                if (currentPlayer == "X") {
                                  board[2][1] = playerXIcon;
                                  currentPlayer = 'O';
                                } else if (currentPlayer == "O") {
                                  board[2][1] = playerOIcon;
                                  currentPlayer = 'X';
                                }
                                setState(() {});
                              },
                            ),
                          ),
                          Expanded(
                            child: OneBox(
                              buttonChild: board[2][2],
                              onTap: () {
                                if (currentPlayer == "X") {
                                  board[2][2] = playerXIcon;
                                  currentPlayer = 'O';
                                } else if (currentPlayer == "O") {
                                  board[2][2] = playerOIcon;
                                  currentPlayer = 'X';
                                }
                                setState(() {});
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Visibility(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: SizedBox(),
                    flex: 1,
                  ),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      child: FlatButton(
                        color: Color(0xFF848AC1),
                        onPressed: () {
                          board = [
                            [null, null, null],
                            [null, null, null],
                            [null, null, null]
                          ];
                          currentPlayer = "X";
                          setState(() {});
                        },
                        child: Text("Reset",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                    flex: 1,
                  ),
                ],
              )),
            )
          ],
        ),
      )),
    );
  }
}

class OneBox extends StatelessWidget {
  final Widget buttonChild;
  final Function onTap;
  OneBox({this.buttonChild = const Text(''), this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: buttonChild,
        onPressed: onTap,
      ),
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.all(
          Radius.circular(14),
        ),
      ),
    );
  }
}

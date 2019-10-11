import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'gamelogic.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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
  @override
  Widget build(BuildContext context) {
    void winnerPopup() {
      if (xWinnerCheck(board) || oWinnerCheck(board)) {
        Alert(
          context: context,
          title: "game Over",
          desc: "Player $currentPlayer won",
          buttons: [
            DialogButton(
              child: Text(
                "Restart",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                gameReset();
                setState(() {});
                return Navigator.pop(context);
              },
              width: 120,
            )
          ],
        ).show();
      } else {
        changePlayer(currentPlayer);
      }
    }

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
                              onPressed: () {
                                if (legitMove(board[0][0])) {
                                  if (currentPlayer == 'X') {
                                    board[0][0] = xIcon;
                                  } else {
                                    board[0][0] = oIcon;
                                  }
                                  winnerPopup();
                                }

                                setState(() {});
                              },
                            ),
                          ),
                          Expanded(
                            child: OneBox(
                              buttonChild: board[0][1],
                              onPressed: () {
                                if (legitMove(board[0][1])) {
                                  if (currentPlayer == 'X') {
                                    board[0][1] = xIcon;
                                  } else {
                                    board[0][1] = oIcon;
                                  }
                                  winnerPopup();
                                }
                                setState(() {});
                              },
                            ),
                          ),
                          Expanded(
                            child: OneBox(
                              buttonChild: board[0][2],
                              onPressed: () {
                                if (legitMove(board[0][2])) {
                                  if (currentPlayer == 'X') {
                                    board[0][2] = xIcon;
                                  } else {
                                    board[0][2] = oIcon;
                                  }
                                  winnerPopup();
                                }
                                setState(() {});
                              },
                            ),
                          )
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
                              onPressed: () {
                                if (legitMove(board[1][0])) {
                                  if (currentPlayer == 'X') {
                                    board[1][0] = xIcon;
                                  } else {
                                    board[1][0] = oIcon;
                                  }
                                  winnerPopup();
                                }
                                setState(() {});
                              },
                            ),
                          ),
                          Expanded(
                            child: OneBox(
                              buttonChild: board[1][1],
                              onPressed: () {
                                if (legitMove(board[1][1])) {
                                  if (currentPlayer == 'X') {
                                    board[1][1] = xIcon;
                                  } else {
                                    board[1][1] = oIcon;
                                  }
                                  winnerPopup();
                                }
                                setState(() {});
                              },
                            ),
                          ),
                          Expanded(
                            child: OneBox(
                              buttonChild: board[1][2],
                              onPressed: () {
                                if (legitMove(board[1][2])) {
                                  if (currentPlayer == 'X') {
                                    board[1][2] = xIcon;
                                  } else {
                                    board[1][2] = oIcon;
                                  }
                                  winnerPopup();
                                }
                                setState(() {});
                              },
                            ),
                          )
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
                              onPressed: () {
                                if (legitMove(board[2][0])) {
                                  if (currentPlayer == 'X') {
                                    board[2][0] = xIcon;
                                  } else {
                                    board[2][0] = oIcon;
                                  }
                                  winnerPopup();
                                }
                                setState(() {});
                              },
                            ),
                          ),
                          Expanded(
                            child: OneBox(
                              buttonChild: board[2][1],
                              onPressed: () {
                                if (legitMove(board[2][1])) {
                                  if (currentPlayer == 'X') {
                                    board[2][1] = xIcon;
                                  } else {
                                    board[2][1] = oIcon;
                                  }
                                  winnerPopup();
                                }
                                setState(() {});
                              },
                            ),
                          ),
                          Expanded(
                            child: OneBox(
                              buttonChild: board[2][2],
                              onPressed: () {
                                if (legitMove(board[2][2])) {
                                  if (currentPlayer == 'X') {
                                    board[2][2] = xIcon;
                                  } else {
                                    board[2][2] = oIcon;
                                  }
                                  winnerPopup();
                                }
                                setState(() {});
                              },
                            ),
                          )
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
                          gameReset();
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
  final Function onPressed;
  OneBox({this.buttonChild = const Text(''), this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: buttonChild,
        onPressed: onPressed,
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

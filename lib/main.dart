import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'gamelogic.dart';

//import 'package:flutter/animation.dart';

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
  void winnerPopup() {
    if (winnerCheck(board)) {
      currentPlayer = "${currentPlayer.substring(7, 9)} Won";
    } else {
      changePlayer(currentPlayer);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD6AA7C),
      body: Container(
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
                alignment: Alignment.topCenter,
                child: Text(
                  "$currentPlayer",
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
                margin: EdgeInsets.all(6),
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
                              colors: colorBoard[0][0],
                              onPressed: () {
                                updateBox(0, 0);
                                setState(() {});
                              },
                            ),
                          ),
                          Expanded(
                            child: OneBox(
                              buttonChild: board[0][1],
                              colors: colorBoard[0][1],
                              onPressed: () {
                                updateBox(0, 1);
                                setState(() {});
                              },
                            ),
                          ),
                          Expanded(
                            child: OneBox(
                              buttonChild: board[0][2],
                              colors: colorBoard[0][2],
                              onPressed: () {
                                if (legitMove(board[0][2])) {
                                  if (currentPlayer == 'Player X Move') {
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
                              colors: colorBoard[1][0],
                              onPressed: () {
                                if (legitMove(board[1][0])) {
                                  if (currentPlayer == 'Player X Move') {
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
                              colors: colorBoard[1][1],
                              onPressed: () {
                                if (legitMove(board[1][1])) {
                                  if (currentPlayer == 'Player X Move') {
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
                              colors: colorBoard[1][2],
                              onPressed: () {
                                if (legitMove(board[1][2])) {
                                  if (currentPlayer == 'Player X Move') {
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
                              colors: colorBoard[2][0],
                              onPressed: () {
                                if (legitMove(board[2][0])) {
                                  if (currentPlayer == 'Player X Move') {
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
                              colors: colorBoard[2][1],
                              onPressed: () {
                                if (legitMove(board[2][1])) {
                                  if (currentPlayer == 'Player X Move') {
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
                              colors: colorBoard[2][2],
                              onPressed: () {
                                if (legitMove(board[2][2])) {
                                  if (currentPlayer == 'Player X Move') {
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
                crossAxisAlignment: CrossAxisAlignment.center,
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
      ),
    );
  }

  void updateBox(int r, int c) {
    if (legitMove(board[r][c])) {
      if (currentPlayer == 'Player X Move') {
        board[r][c] = xIcon;
      } else {
        board[r][c] = oIcon;
      }
      winnerPopup();
    }
  }
}

class OneBox extends StatelessWidget {
  final Widget buttonChild;
  final Function onPressed;
  final Color colors;
  OneBox(
      {this.buttonChild = const Text(''),
      this.onPressed,
      this.colors = Colors.white24});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: FlatButton(
        child: AnimatedSwitcher(
            switchOutCurve: Curves.bounceOut,
            switchInCurve: Curves.fastOutSlowIn,
            duration: const Duration(milliseconds: 600),
            child: buttonChild),
        onPressed: onPressed,
      ),
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.all(
          Radius.circular(14),
        ),
      ),
    );
  }
}

void buttonClick2(Function wpopup, Icon x) {
  if (legitMove(x)) {
    if (currentPlayer == 'Player X Move') {
      playerIcon = xIcon;
      x = playerIcon;
    } else {
      playerIcon = oIcon;
      x = playerIcon;
    }
    wpopup();
  }
}

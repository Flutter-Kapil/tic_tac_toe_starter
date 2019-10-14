import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<List<Icon>> board = [
  [null, null, null],
  [null, null, null],
  [null, null, null]
];

List<List<Color>> colorBoard = [
  [Colors.white24, Colors.white24, Colors.white24],
  [Colors.white24, Colors.white24, Colors.white24],
  [Colors.white24, Colors.white24, Colors.white24]
];

bool legitMove(Icon icon) => icon == null;
//return true if we give it value like board[0][0]

void midFunction(String livePlayer, var x) {
  if (livePlayer == 'Player X Move') {
    playerIcon = xIcon;
    x = playerIcon;
  } else {
    playerIcon = oIcon;
    x = playerIcon;
  }
}

//default parameters
String currentPlayer = 'Player X Move'; //X will always be player 1
Icon xIcon = Icon(
  Icons.close,
  size: 50,
);
Icon oIcon = Icon(
  Icons.radio_button_unchecked,
  size: 50,
);
Icon playerIcon;

//function to change player based on currentPlayer value which is a string,
void changePlayer(String x) {
  if (x == 'Player X Move') {
    currentPlayer = 'Player O Move';
  } else if (x == 'Player O Move') {
    currentPlayer = 'Player X Move';
  }
}

Color winningColor = Colors.yellow.withOpacity(0.2);
void gameReset() {
  board = [
    [null, null, null],
    [null, null, null],
    [null, null, null]
  ];
  colorBoard = [
    [Colors.white24, Colors.white24, Colors.white24],
    [Colors.white24, Colors.white24, Colors.white24],
    [Colors.white24, Colors.white24, Colors.white24]
  ];
  currentPlayer = 'Player X Move';
}

void gameWin(List<List<Icon>> gameBoard) {
  for (int i = 0; i < 3; i++) {
    gameBoard[0][i] = xIcon;
  }
}

bool winnerCheck(List<List<Icon>> board) {
  for (int i = 0; i < 3; i++) {
    if (board[i][0] == xIcon && board[i][1] == xIcon && board[i][2] == xIcon) {
      colorBoard[i][0] = winningColor;
      colorBoard[i][1] = winningColor;
      colorBoard[i][2] = winningColor;
      return true;
    }
    if (board[0][i] == xIcon && board[1][i] == xIcon && board[2][i] == xIcon) {
      colorBoard[0][i] = winningColor;
      colorBoard[1][i] = winningColor;
      colorBoard[2][i] = winningColor;
      return true;
    }
    if (board[i][0] == oIcon && board[i][1] == oIcon && board[i][2] == oIcon) {
      colorBoard[i][0] = winningColor;
      colorBoard[i][1] = winningColor;
      colorBoard[i][2] = winningColor;
      return true;
    }
    if (board[0][i] == oIcon && board[1][i] == oIcon && board[2][i] == oIcon) {
      colorBoard[0][i] = winningColor;
      colorBoard[1][i] = winningColor;
      colorBoard[2][i] = winningColor;
      return true;
    }
  }
  if (board[0][0] == xIcon && board[1][1] == xIcon && board[2][2] == xIcon) {
    colorBoard[0][0] = winningColor;
    colorBoard[1][1] = winningColor;
    colorBoard[2][2] = winningColor;
    return true;
  }
  if (board[0][2] == xIcon && board[1][1] == xIcon && board[2][0] == xIcon) {
    colorBoard[0][2] = winningColor;
    colorBoard[1][1] = winningColor;
    colorBoard[2][0] = winningColor;
    return true;
  }
  if (board[0][0] == oIcon && board[1][1] == oIcon && board[2][2] == oIcon) {
    colorBoard[0][0] = winningColor;
    colorBoard[1][1] = winningColor;
    colorBoard[2][2] = winningColor;
    return true;
  } else if (board[0][2] == oIcon &&
      board[1][1] == oIcon &&
      board[2][0] == oIcon) {
    colorBoard[0][2] = winningColor;
    colorBoard[1][1] = winningColor;
    colorBoard[2][0] = winningColor;
    return true;
  } else {
    return false;
  }
}

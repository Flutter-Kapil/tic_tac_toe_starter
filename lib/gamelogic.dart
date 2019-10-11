import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<List<Icon>> board = [
  [null, null, null],
  [null, null, null],
  [null, null, null]
];

bool legitMove(Icon icon) => icon == null;
//return true if we give it value like board[0][0]

void midFunction(String livePlayer, var x) {
  if (livePlayer == 'X') {
    playerIcon = xIcon;
    x = playerIcon;
  } else {
    playerIcon = oIcon;
    x = playerIcon;
  }
}

//default parameters
String currentPlayer = 'X'; //X will always be player 1
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
  if (x == 'X') {
    currentPlayer = 'O';
  } else if (x == 'O') {
    currentPlayer = 'X';
  }
}

void gameReset() {
  board = [
    [null, null, null],
    [null, null, null],
    [null, null, null]
  ];
  currentPlayer = 'X';
}

void gameWin(List<List<Icon>> gameBoard) {
  for (int i = 0; i < 3; i++) {
    gameBoard[0][i] = xIcon;
  }
}

bool winnerCheck(List<List<Icon>> board) {
  for (int i = 0; i < 3; i++) {
    if (board[i][0] == xIcon && board[i][1] == xIcon && board[i][2] == xIcon) {
      return true;
    }
    if (board[0][i] == xIcon && board[1][i] == xIcon && board[2][i] == xIcon) {
      return true;
    }
    if (board[i][0] == oIcon && board[i][1] == oIcon && board[i][2] == oIcon) {
      return true;
    }
    if (board[0][i] == oIcon && board[1][i] == oIcon && board[2][i] == oIcon) {
      return true;
    }
  }
  if (board[0][0] == xIcon && board[1][1] == xIcon && board[2][2] == xIcon) {
    return true;
  }
  if (board[0][2] == xIcon && board[1][1] == xIcon && board[2][0] == xIcon) {
    return true;
  }
  if (board[0][0] == oIcon && board[1][1] == oIcon && board[2][2] == oIcon) {
    return true;
  } else if (board[0][2] == oIcon &&
      board[1][1] == oIcon &&
      board[2][0] == oIcon) {
    return true;
  } else {
    return false;
  }
}

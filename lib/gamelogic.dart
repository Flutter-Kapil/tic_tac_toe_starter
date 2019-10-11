import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<List<Icon>> board = [
  [null, null, null],
  [null, null, null],
  [null, null, null]
];

bool legitMove(Icon icon) => icon == null;
//return true if we give it value like board[0][0]

//default parameters
String currentPlayer = 'X'; //X will always be player 1
Icon xIcon = Icon(
  Icons.close,
  size: 50,
);
Icon oIcon = Icon(
  Icons.gps_not_fixed,
  size: 50,
);

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

bool xWinnerCheck(List<List<Icon>> board) {
  if (board[0][0] == xIcon && board[0][1] == xIcon && board[0][2] == xIcon) {
    print("X won");
    return true;
  } else if (board[1][0] == xIcon &&
      board[1][1] == xIcon &&
      board[1][2] == xIcon) {
    print("X won");
    return true;
  } else if (board[2][0] == xIcon &&
      board[2][1] == xIcon &&
      board[2][2] == xIcon) {
    print("X won");
    return true;
  } else if (board[0][0] == xIcon &&
      board[1][0] == xIcon &&
      board[2][0] == xIcon) {
    print("X won");
    return true;
  } else if (board[0][1] == xIcon &&
      board[1][1] == xIcon &&
      board[2][1] == xIcon) {
    print("X won");
    return true;
  } else if (board[0][2] == xIcon &&
      board[1][2] == xIcon &&
      board[2][2] == xIcon) {
    print("X won");
    return true;
  } else if (board[0][0] == xIcon &&
      board[1][1] == xIcon &&
      board[2][2] == xIcon) {
    print("X won");
    return true;
  } else if (board[0][2] == xIcon &&
      board[1][1] == xIcon &&
      board[2][0] == xIcon) {
    print("X won");
    return true;
  } else {
    return false;
  }
}

bool oWinnerCheck2(List<List<Icon>> board) {
  bool result;
  for (int i = 0; i < 3; i++) {
    if (board[i][0] == oIcon && board[i][1] == oIcon && board[i][2] == oIcon) {
      print("O2 won");
      result = true;
      print("value of result is $result");
    } else {
      if (board[0][i] == oIcon &&
          board[1][i] == oIcon &&
          board[2][i] == oIcon) {
        print("O2 won");
        result = true;
        print("value of result is $result");
      }
    } //this if logic is not working.
  }
  if (board[0][0] == oIcon && board[1][1] == oIcon && board[2][2] == oIcon) {
    print("O2 won");
    result = true;
  } else if (board[0][2] == oIcon &&
      board[1][1] == oIcon &&
      board[2][0] == oIcon) {
    print("O2 won");
    result = true;
  } else {
    result = false;
  }
  return result;
}

bool oWinnerCheck(List<List<Icon>> board) {
  if (board[0][0] == oIcon && board[0][1] == oIcon && board[0][2] == oIcon) {
    print("O won");
    return true;
  } else if (board[1][0] == oIcon &&
      board[1][1] == oIcon &&
      board[1][2] == oIcon) {
    print("O won");
    return true;
  } else if (board[2][0] == oIcon &&
      board[2][1] == oIcon &&
      board[2][2] == oIcon) {
    print("O won");
    return true;
  } else if (board[0][0] == oIcon &&
      board[1][0] == oIcon &&
      board[2][0] == oIcon) {
    print("O won");
    return true;
  } else if (board[0][1] == oIcon &&
      board[1][1] == oIcon &&
      board[2][1] == oIcon) {
    print("O won");
    return true;
  } else if (board[0][2] == oIcon &&
      board[1][2] == oIcon &&
      board[2][2] == oIcon) {
    print("O won");
    return true;
  } else if (board[0][0] == oIcon &&
      board[1][1] == oIcon &&
      board[2][2] == oIcon) {
    print("O won");
    return true;
  } else if (board[0][2] == oIcon &&
      board[1][1] == oIcon &&
      board[2][0] == oIcon) {
    print("O won");
    return true;
  } else {
    return false;
  }
}

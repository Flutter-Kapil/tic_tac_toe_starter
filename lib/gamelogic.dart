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

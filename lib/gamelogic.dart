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
Icon xIcon = Icon(Icons.close);
Icon oIcon = Icon(Icons.gps_not_fixed);

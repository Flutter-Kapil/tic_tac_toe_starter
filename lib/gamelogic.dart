import 'package:flutter/cupertino.dart';

List<List<Icon>> board = [
  [null, null, null],
  [null, null, null],
  [null, null, null]
];

bool legitMove(Icon icon)=> icon==null;
//return true if we give it value like board[0][0]
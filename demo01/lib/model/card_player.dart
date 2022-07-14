

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardPlayer {
  final int stt;
  final Color colorPlayer;
  final bool iconPlayer;
  final String namePlayer;

  CardPlayer({required this.stt,required this.colorPlayer,required this.iconPlayer,required this.namePlayer});

  static List<CardPlayer> listCardPlayer = [
    CardPlayer(stt: 1,colorPlayer: Colors.orangeAccent,iconPlayer: true,namePlayer: 'nhu ngoc' ),
    CardPlayer(stt: 2,colorPlayer: Color.fromARGB(255, 221, 219, 219),iconPlayer: false,namePlayer: 'Eric' ),
  ];
}
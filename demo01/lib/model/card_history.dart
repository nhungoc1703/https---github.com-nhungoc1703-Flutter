
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CardHistory {
  final IconData iconHistory;
  final int numberWord;
  final int numberPlayer;
  final DateTime dateHistory;
  // final String timeHistory;

  CardHistory(
      {
      required this.iconHistory,
      required this.numberWord,
      required this.numberPlayer,
      required this.dateHistory,
      // required this.timeHistory,
      });

  String parseDatetimeToString(DateTime datetime) {
    // var now = DateTime.now();
    var formatter = DateFormat('dd-MM-yyyy HH:mm:ss');
    String formattedDate = formatter.format(datetime);
    return formattedDate;
  }

   static List<CardHistory> listCardHistory = [
    CardHistory(iconHistory:Icons.military_tech,numberWord:5,numberPlayer:2,dateHistory:DateTime.now()),
    CardHistory(iconHistory:Icons.workspace_premium,numberWord:20,numberPlayer:5,dateHistory:DateTime.now()),
    CardHistory(iconHistory:Icons.military_tech,numberWord:10,numberPlayer:2,dateHistory:DateTime.now()),
    CardHistory(iconHistory:Icons.workspace_premium,numberWord:26,numberPlayer:4,dateHistory:DateTime.now()),

   ];

  }
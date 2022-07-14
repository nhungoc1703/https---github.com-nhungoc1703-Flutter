//tao model can co cac thuoc tinh nhung cai mk show ra tren UI
import 'package:flutter/material.dart';

class CardGuide {
  final Color colorGuide;
  final IconData iconGuide;
  final String titleGuide;

  CardGuide(
      {required this.colorGuide,
      required this.iconGuide,
      required this.titleGuide});

  static List<CardGuide> listCardGuide = [
    CardGuide(colorGuide: Colors.red, iconGuide: Icons.token, titleGuide: 'Welcome to PERSONA 5'),
    CardGuide(colorGuide: Colors.yellow, iconGuide: Icons.undo, titleGuide: '2'),
    CardGuide(colorGuide: Colors.blue, iconGuide: Icons.add_link, titleGuide: '3'),
    CardGuide(colorGuide: Colors.grey, iconGuide: Icons.cabin, titleGuide: '4'),
    CardGuide(colorGuide: Colors.green, iconGuide: Icons.backpack, titleGuide: '5'),
    CardGuide(colorGuide: Colors.purple, iconGuide: Icons.radar, titleGuide: '6'),
    CardGuide(colorGuide: Colors.pink, iconGuide: Icons.tablet, titleGuide: '7')
  ];
}

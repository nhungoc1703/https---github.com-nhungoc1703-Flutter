import 'package:flutter/material.dart';

class TropyWidget extends StatelessWidget {
  final Color colorTropy ;
  final IconData iconTropy;
  const TropyWidget({Key? key, required this.colorTropy, required this.iconTropy}) : super(key: key); //tao contrucster

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset(2.0, 8.0),
            )
          ]),
      child: Column(children: [
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: colorTropy,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: Icon(
            // Icons.military_tech,
            iconTropy,
            color: Colors.black,
            size: 32.0,
          ),
        ),
        const Text(
          '0',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ]),
    );
  }
}

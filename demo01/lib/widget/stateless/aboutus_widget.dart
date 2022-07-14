import 'package:flutter/material.dart';

class AboutUsWidget extends StatelessWidget {
  final String imageAbout;
  final String nameAbout;
  final String emailAbout;
  final String positionAbout;
  const AboutUsWidget(
      {Key? key,
      required this.imageAbout,
      required this.nameAbout,
      required this.emailAbout,
      required this.positionAbout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 6,
            blurRadius: 6,
            // offset: const Offset(
            //   2.0,
            //   2.0,
            // ),
          )
        ],
      ),
      child: Row(
        children: [
          //container image
          Container(
            height: 120,
            width: 140,
            // margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageAbout), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
          ),
          //row infor
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.group,
                      size: 20,
                      color: Colors.indigo,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      nameAbout,
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.mail,
                      size: 20,
                      color: Colors.indigo,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      emailAbout,
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.verified_user,
                      size: 20,
                      color: Colors.indigo,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      positionAbout,
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../config/themes/app_colors.dart';

class WidgetFeatures extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData iconFeatures;
  final Color colorFeatures;
  // getData(int number){
  //   number = 2;
  // } day la kieu ham co tham so truyen vao
  const WidgetFeatures({Key? key, required this.title, required this.subTitle, required this.iconFeatures, required this.colorFeatures}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.buttonColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: colorFeatures),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                ),
                child: Icon(
                  // Icons.edit,
                  iconFeatures,
                  color: colorFeatures,
                  size: 17.0,
                ),
              ),
               Text(
                title,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
               Text(
                subTitle,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              )
            ]),
      ),
    );
  }
}

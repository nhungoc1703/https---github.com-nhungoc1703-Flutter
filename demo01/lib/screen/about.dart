import 'package:demo01/config/themes/app_colors.dart';
import 'package:demo01/widget/stateless/aboutus_widget.dart';
import 'package:flutter/material.dart';

import '../config/themes/app_text_style.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  List<String> items = [
    'Select',
    'Error',
    'Morefunctions',
    'Cheating',
    'Other'
  ];
  // String? selectedItem = 'Select';
  String? _selectedColor;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //headerApp
            Container(
              height: size.height * 0.35,
              child: Stack(children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: size.height * 0.3 - 15,
                  decoration: const BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                          size: 50.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.auto_awesome,
                              color: Colors.yellowAccent,
                              size: 45.0,
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child:  Center(
                                child: Text(
                                  'NN',
                                  style: AppTextStyle.textNameInCircle1,
                                ),
                              ),
                            )
                          ],
                        ),
                      ]),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    margin: EdgeInsets.only(left: 125),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(100),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 6,
                          blurRadius: 6,
                          // offset: const Offset(
                          //   0.0,
                          //   0.0,
                          // ),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.view_in_ar,
                      color: Colors.black,
                      size: 60.0,
                    ),
                  ),
                ),
              ]),
            ),
            //Title about us
             ListTile(
              leading: Icon(
                Icons.group,
                size: 40,
                color: Colors.indigo,
              ),
              title: Text(
                'About us',
                style: AppTextStyle.textListitle,
              ),
            ),
            //Card infor
            AboutUsWidget(
              emailAbout: 'nguyanvana@gmail.com',
              imageAbout: 'assests/images/avatar5.jpg',
              nameAbout: 'Joker',
              positionAbout: 'Leader',
            ),
            AboutUsWidget(
              emailAbout: 'nguyanvana@gmail.com',
              imageAbout: 'assests/images/avatar1.jpg',
              nameAbout: 'Panther',
              positionAbout: 'Leader',
            ),
            AboutUsWidget(
              emailAbout: 'nguyanvana@gmail.com',
              imageAbout: 'assests/images/avatar2.jpg',
              nameAbout: 'Queen',
              positionAbout: 'Leader',
            ),
            AboutUsWidget(
              emailAbout: 'nguyanvana@gmail.com',
              imageAbout: 'assests/images/avatar3.jpg',
              nameAbout: 'Oracle',
              positionAbout: 'Leader',
            ),
            AboutUsWidget(
              emailAbout: 'nguyanvana@gmail.com',
              imageAbout: 'assests/images/avatar4.jpg',
              nameAbout: 'Noir',
              positionAbout: 'Leader',
            ),
            //divided
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(children: const [
                Expanded(
                    child: Divider(
                  color: Colors.indigo,
                )),
                Text(
                  "Your report",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.indigo,
                  ),
                ),
                Expanded(
                    child: Divider(
                  color: Colors.indigo,
                )),
              ]),
            ),
            //typereport
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Type report',
                  style: TextStyle(fontSize: 20, color: Colors.indigo),
                ),

                // SizedBox(
                //   width: 100,
                //   child: DropdownButtonFormField<String>(
                //     decoration: InputDecoration(
                //       enabledBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(15),
                //         borderSide: BorderSide(width: 3, color: Colors.blue),
                //       ),
                //     ),
                //     value: selectedItem,
                //     items: items
                //         .map((item) => DropdownMenuItem<String>(
                //             value: item,
                //             child: Text(
                //               item,
                //               style: TextStyle(fontSize: 10),
                //             )))
                //         .toList(),
                //     onChanged: (item) => setState(() => selectedItem = item),
                //   ),
                // )

                Container(
                  width: 180,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(20)),
                  child: DropdownButton<String>(
                    dropdownColor: Colors.indigo,
                    onChanged: (value) {
                      setState(() {
                        _selectedColor = value;
                      });
                    },
                    value: _selectedColor,

                    // Hide the default underline
                    underline: Container(),
                    hint: const Center(
                        child: Text(
                      'Select ',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                    icon: const Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    ),
                    isExpanded: true,

                    // The list of options
                    items: items
                        .map((e) => DropdownMenuItem(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  e,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                              value: e,
                            ))
                        .toList(),

                    // Customize the selected item
                    selectedItemBuilder: (BuildContext context) => items
                        .map((e) => Center(
                              child: Text(
                                e,
                                style: const TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
            //textfield
            Container(
              margin: EdgeInsets.all(10),
              child: const TextField(
                minLines: 2,
                maxLines: 4,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Enter your Text"),
              ),
            ),
            //button send
            Container(
              width: 180,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 30,
                    ),
                  Text(
                    'Send',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15,),
            //   child: Container(
            //     color: Colors.red,
            //     width: double.infinity,
            //     height:50,
            //     child: Text('1'),),
            // ),
          ],
        ),
      ),
    );
  }
}

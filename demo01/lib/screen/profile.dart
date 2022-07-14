//1 cai container bu co chiu width maxscreen, height tu cho
// ben trong container bu phai co mot cai child(row)
//row co 2 phan phan tren(trai) expanded phan duoi la container(phai)
//container co chiu cao = chiu cao container bu
//expanded co child la column
//trong column[
//        row[container,column,column]
//        divide
//        row[text,text,text]
// ]
//sai listview.buider tao du lieu gia
import 'package:demo01/config/themes/app_colors.dart';
import 'package:demo01/model/card_history.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../config/themes/app_text_style.dart';


class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          //header app
          Container(
            height: size.height * 0.45,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                        size: 50.0,
                      ),
                      Icon(
                        Icons.auto_awesome,
                        color: Colors.yellowAccent,
                        size: 45.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.yellow),
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Center(
                      child: Text(
                    'NN',
                    style: AppTextStyle.textNameInCircle3,
                  )),
                ),
                Column(
                  children: [
                    Text(
                      'Ngoc Nhu',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'nhungoc743@gmail.com',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                )
              ],
            ),
          ),
          //Title history
          ListTile(
            leading: Icon(
              Icons.update,
              size: 40,
              color: Colors.indigo,
            ),
            title: Text(
              'History',
              style: AppTextStyle.textListitle,
            ),
          ),
          //Listview

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 4),
                itemCount: CardHistory.listCardHistory.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    width: double.infinity,
                    height: size.height * 0.16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              //ICON,WORDS,PLAYER
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2, color: Colors.grey),
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: Icon(
                                        // Icons.workspace_premium,
                                        CardHistory
                                            .listCardHistory[index].iconHistory,
                                        color: Colors.yellow,
                                        size: 35.0,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        const Text(
                                          'Words',
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.grey),
                                        ),
                                        Text(
                                          CardHistory
                                              .listCardHistory[index].numberWord
                                              .toString(),
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        const Text(
                                          'Player',
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.grey),
                                        ),
                                        Text(
                                          CardHistory.listCardHistory[index]
                                              .numberPlayer
                                              .toString(),
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //DIVIDE
                              Row(
                                children: const [
                                  Expanded(
                                      child: Divider(
                                    color: Colors.indigo,
                                  )),
                                ],
                              ),
                              //DATETIME
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Date',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.grey),
                                    ),
                                    Container(
                                        width: size.width * 0.39,
                                        height: size.width * 0.07,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.indigo,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              CardHistory.listCardHistory[index]
                                                  .parseDatetimeToString(
                                                      CardHistory
                                                          .listCardHistory[
                                                              index]
                                                          .dateHistory),
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            // Text(
                                            //   CardHistory.listCardHistory[index]
                                            //   .timeHistory,
                                            //   style: TextStyle(
                                            //       color: Colors.white),
                                            // ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        //ICON UNDO
                        Container(
                          width: size.width * 0.15,
                          height: size.height * 0.16,
                          decoration: const BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                          ),
                          child: const Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

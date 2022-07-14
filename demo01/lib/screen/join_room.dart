import 'dart:ui';

import 'package:demo01/model/card_join.dart';
import 'package:demo01/model/card_player.dart';
import 'package:demo01/widget/stateless/join_room_widget.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../data_sources/api_services.dart';

class JoinRoom extends StatefulWidget {
  const JoinRoom({Key? key}) : super(key: key);

  @override
  State<JoinRoom> createState() => _JoinRoomState();
}

class _JoinRoomState extends State<JoinRoom> {
  List listColor = [
    Colors.amber,
    Colors.teal,
    Colors.orange,
    Colors.green,
    Colors.deepOrange,
    Colors.deepPurple
  ];
  void changeIndex() {
    // print("--------------------------------------------");
    // print(listColor[0]);
    setState(() {
      listColor.shuffle();
    });
  }

  //shuffle hoan doi cac thanh phan trong list
  @override
  void initState() {
    super.initState();
    changeIndex();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 60),
            width: double.infinity,
            height: double.infinity,
            color: Color.fromARGB(255, 12, 23, 92),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                  size: 50,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: Text(
                    'Join Room',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Text(
                      'NN',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              height: size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  //Title ID room
                  const ListTile(
                    title: Text(
                      'Enter Room ID',
                      style: TextStyle(fontSize: 18, color: Colors.indigo),
                    ),
                  ),
                  //pin code
                  Container(
                    height: size.height * 0.07,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: PinCodeTextField(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            length: 5,
                            appContext: context,
                            onChanged: (value) {
                              print(value);
                            },
                            pinTheme: PinTheme(
                                fieldHeight: size.height * 0.07,
                                shape: PinCodeFieldShape.box,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                inactiveColor: Colors.grey,
                                activeColor: Colors.indigo,
                                selectedColor: Colors.indigo),
                          ),
                        ),
                        //Button Submit
                        Container(
                          margin: EdgeInsets.only(top: 4),
                          width: size.height * 0.06,
                          height: size.width * 0.12,
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: const Icon(
                            Icons.double_arrow,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //list room
                  Expanded(
                    child: FutureBuilder<List<CardJoinRoom>>(
                      future: ApiServices().fetchUser(),
                      builder: (context, snapshot) {
                        if ((snapshot.hasError) || (!snapshot.hasData))
                          return Container(
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                        List<CardJoinRoom>? cardJoinRoomList = snapshot.data;
                        return ListView.builder(
                          padding: EdgeInsets.all(0),
                          itemCount: cardJoinRoomList!.length,
                          itemBuilder: (BuildContext context, int i) {
                            int index;
                            if (i >= listColor.length) {
                              index = (i % listColor.length).floor();
                            } else {
                              index = i;
                            }
                            return JoinRoomWidget(
                                cardjoinroom: cardJoinRoomList[i],
                                colorRoom: listColor[index]);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

                    // ListView.builder(
                    //   padding: EdgeInsets.all(0),
                    //   itemCount: CardJoinRoom.listCardJoinRoom.length,
                    //   itemBuilder: (context, index) {
                    //     return JoinRoomWidget(
                    //       idRoom: CardJoinRoom.listCardJoinRoom[index].idRoom,
                    //       namePlayer: CardJoinRoom.listCardJoinRoom[index].namePlayer,
                    //       numberPlayer: CardJoinRoom.listCardJoinRoom[index].numberPlayer,
                    //       secondsRoom: CardJoinRoom.listCardJoinRoom[index].secondsRoom,
                    //       colorRoom: listColor[index],
                    //     );
                    //   },
                    // ),

                          // Container(
                          //   margin: EdgeInsets.only(top: 10, bottom: 15),
                          //   width: double.infinity,
                          //   height: size.height * 0.2,
                          //   decoration: BoxDecoration(
                          //     borderRadius:
                          //         BorderRadius.all(Radius.circular(15)),
                          //     color: Color.fromARGB(255, 23, 102, 23),
                          //   ),
                          //   child: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       Container(
                          //         height: size.height * 0.06,
                          //         // margin: EdgeInsets.only(right: 150 ),
                          //         width: size.width * 0.8,
                          //         decoration: const BoxDecoration(
                          //           color: Color.fromARGB(255, 12, 23, 92),
                          //           borderRadius: BorderRadius.only(
                          //             bottomRight: Radius.circular(20),
                          //             topLeft: Radius.circular(15),
                          //           ),
                          //         ),
                          //         child: Row(
                          //           mainAxisAlignment:
                          //               MainAxisAlignment.spaceEvenly,
                          //           children: [
                          //             Padding(
                          //               padding: EdgeInsets.symmetric(
                          //                   horizontal: 15),
                          //               child: Text(
                          //                 'Lobby of ngoc nhu',
                          //                 style: TextStyle(
                          //                     fontSize: 15,
                          //                     color: Colors.white),
                          //               ),
                          //             ),
                          //             Align(
                          //               alignment: Alignment.topCenter,
                          //               child: Container(
                          //                 height: size.height * 0.06,
                          //                 padding: const EdgeInsets.all(4),
                          //                 child: VerticalDivider(
                          //                   color: Colors.white,
                          //                   thickness: 1,
                          //                   indent: 6,
                          //                   endIndent: 6,
                          //                 ),
                          //               ),
                          //             ),
                          //             Row(
                          //               children: [
                          //                 Text(
                          //                   '#',
                          //                   style: TextStyle(
                          //                       fontSize: 20,
                          //                       color: Colors.white),
                          //                 ),
                          //                 Text(
                          //                   '123456',
                          //                   style: TextStyle(
                          //                       fontSize: 15,
                          //                       color: Colors.amberAccent),
                          //                 )
                          //               ],
                          //             ),
                          //           ],
                          //         ),
                          //       ),
                          //       Expanded(
                          //         child: Padding(
                          //           padding: const EdgeInsets.only(left: 20),
                          //           child: Column(
                          //             mainAxisAlignment:
                          //                 MainAxisAlignment.spaceEvenly,
                          //             children: [
                          //               Row(
                          //                 mainAxisAlignment:
                          //                     MainAxisAlignment.spaceEvenly,
                          //                 children: [
                          //                   Row(
                          //                     children: [
                          //                       Icon(
                          //                         Icons.schedule,
                          //                         color: Colors.white,
                          //                         size: size.height * 0.05,
                          //                       ),
                          //                       const Padding(
                          //                         padding: EdgeInsets.all(4.0),
                          //                         child: Text(
                          //                           '10s',
                          //                           style:
                          //                               TextStyle(fontSize: 18),
                          //                         ),
                          //                       ),
                          //                     ],
                          //                   ),
                          //                   Row(
                          //                     children: [
                          //                       Icon(
                          //                         Icons.auto_mode,
                          //                         color: Colors.white,
                          //                         size: size.height * 0.05,
                          //                       ),
                          //                       const Padding(
                          //                         padding: EdgeInsets.all(4.0),
                          //                         child: Text(
                          //                           'Default',
                          //                           style:
                          //                               TextStyle(fontSize: 18),
                          //                         ),
                          //                       ),
                          //                     ],
                          //                   ),
                          //                 ],
                          //               ),
                          //               Row(
                          //                 mainAxisAlignment:
                          //                     MainAxisAlignment.spaceAround,
                          //                 children: [
                          //                   Row(
                          //                     children: [
                          //                       Padding(
                          //                         padding:
                          //                             const EdgeInsets.only(
                          //                                 left: 26),
                          //                         child: Icon(
                          //                           Icons.group_work,
                          //                           color: Colors.white,
                          //                           size: size.height * 0.05,
                          //                         ),
                          //                       ),
                          //                       const Padding(
                          //                         padding: EdgeInsets.all(4.0),
                          //                         child: Text(
                          //                           '2/5 Player',
                          //                           style:
                          //                               TextStyle(fontSize: 18),
                          //                         ),
                          //                       ),
                          //                     ],
                          //                   ),
                          //                   Container(
                          //                     // margin: EdgeInsets.symmetric(horizontal: 14),
                          //                     height: size.height * 0.05,
                          //                     width: size.width * 0.25,
                          //                     decoration: BoxDecoration(
                          //                       borderRadius: BorderRadius.all(
                          //                           Radius.circular(10)),
                          //                       color: Colors.orangeAccent,
                          //                       boxShadow: [
                          //                         BoxShadow(
                          //                           color: Colors.black
                          //                               .withOpacity(0.3),
                          //                           spreadRadius: 1,
                          //                           blurRadius: 1,
                          //                           offset: Offset(2, 2),
                          //                         ),
                          //                       ],
                          //                     ),
                          //                     child: Center(
                          //                       child: Text(
                          //                         'Join',
                          //                         style:
                          //                             TextStyle(fontSize: 20),
                          //                       ),
                          //                     ),
                          //                   ),
                          //                 ],
                          //               )
                          //             ],
                          //           ),
                          //         ),
                          //       )
                          //     ],
                          //   ),
                          // ),
                          // Positioned(
                          //   bottom: size.height * 0.06,
                          //   // left: size.width*0.01,
                          //   child: Container(
                          //     width: size.height * 0.08,
                          //     height: size.width * 0.15,
                          //     decoration: BoxDecoration(
                          //       color: Colors.white,
                          //       borderRadius: BorderRadius.only(
                          //         topRight: Radius.circular(50),
                          //         bottomRight: Radius.circular(50),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // Positioned(
                          //   bottom: size.height * 0.072,
                          //   left: size.width * 0.04,
                          //   child: Container(
                          //     width: size.height * 0.05,
                          //     height: size.width * 0.1,
                          //     decoration: BoxDecoration(
                          //       color: Colors.black,
                          //       borderRadius:
                          //           BorderRadius.all(Radius.circular(50)),
                          //     ),
                          //     child: Icon(
                          //       Icons.add,
                          //       size: 15,
                          //       color: Colors.white,
                          //     ),
                          //   ),
                          // ),
                        
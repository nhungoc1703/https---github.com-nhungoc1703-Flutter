import 'package:flutter/material.dart';

import '../../model/card_join.dart';

class JoinRoomWidget extends StatelessWidget {
  CardJoinRoom? cardjoinroom;
  JoinRoomWidget({this.cardjoinroom, this.colorRoom});
 
  // final String idRoom;
  // final int secondsRoom;
  // final int numberPlayer;
  // final String namePlayer;
  final Color? colorRoom;
  // const JoinRoomWidget(
  //     {Key? key,
  //     required this.idRoom,
  //     required this.secondsRoom,
  //     required this.numberPlayer,
  //     required this.namePlayer,
  //     this.colorRoom})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          width: double.infinity,
          height: size.height * 0.2,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: colorRoom,
            // color: Colors.deepPurple,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.06,
                // margin: EdgeInsets.only(right: 150 ),
                width: size.width * 0.85,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 12, 23, 92),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: size.width*0.6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Lobby of ',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            cardjoinroom!.name!.last! + " " + cardjoinroom!.name!.first!,
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: size.width*0.05,
                        height: size.height * 0.06,
                        padding: const EdgeInsets.all(4),
                        child: VerticalDivider(
                          color: Colors.white,
                          thickness: 1,
                          indent: 6,
                          endIndent: 6,
                        ),
                      ),
                    ),
                    Expanded(
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '#',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            //idRoom,
                            '11111',
                            style: TextStyle(
                                fontSize: 15, color: Colors.amberAccent),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.schedule,
                                color: Colors.yellowAccent,
                                size: size.height * 0.05,
                              ),
                              Text(
                                // secondsRoom.toString(),
                                '10',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                ('s'),
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.auto_mode,
                                color: Colors.purpleAccent,
                                size: size.height * 0.05,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  'Default',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 26),
                                child: Icon(
                                  Icons.group_work,
                                  color: Colors.greenAccent,
                                  size: size.height * 0.05,
                                ),
                              ),
                              Text(
                                // numberPlayer.toString(),
                                '2',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                '/5 Player',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            // margin: EdgeInsets.symmetric(horizontal: 14),
                            height: size.height * 0.05,
                            width: size.width * 0.25,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.orangeAccent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'Join',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: size.height * 0.05,
          // left: size.width*0.01,
          child: Container(
            width: size.height * 0.08,
            height: size.width * 0.15,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: size.height * 0.062,
          left: size.width * 0.04,
          child: Container(
            width: size.height * 0.05,
            height: size.width * 0.1,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: CircleAvatar(
              backgroundImage: new NetworkImage(cardjoinroom!.picture!.thumbnail!),
            ),
            //Icon(
            //   Icons.add,
            //   size: 15,
            //   color: Colors.white,
            // ),
          ),
        ),
      ],
    );
  }
}

import 'package:demo01/model/card_player.dart';
import 'package:flutter/material.dart';

class Create extends StatefulWidget {
  const Create({Key? key}) : super(key: key);

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  double _targetSize = 320;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
                    '2/5 Player',
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
              padding: const EdgeInsets.only(left: 10, top: 10, right: 20),
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
                  const ListTile(
                    leading: Icon(
                      Icons.view_in_ar,
                      size: 30,
                      color: Colors.indigo,
                    ),
                    title: Text(
                      'Lobby of ngoc nhu',
                      style: TextStyle(fontSize: 18, color: Colors.indigo),
                    ),
                  ),
                  //animation
                  TweenAnimationBuilder(
                    tween: Tween<double>(
                      begin: 280,
                      end: _targetSize,
                    ),
                    duration: Duration(seconds: 1),
                    onEnd: () {
                      setState(() {
                        if (_targetSize == 280) {
                          _targetSize = 320;
                        } else {
                          _targetSize = 280;
                        }
                      });
                    },
                    curve: Curves.linear,
                    builder: (BuildContext _, double value, Widget? __) {
                      return Container(
                        width: value,
                        height: size.height * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.indigo,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 6,
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Icon(
                                    Icons.token,
                                    size: 90,
                                    color: Colors.white,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Room ID',
                                        style: (TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                      ),
                                      Text(
                                        '123456',
                                        style: (TextStyle(
                                            color: Colors.white, fontSize: 30)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.only(bottom: 38),
                              width: size.width * 0.15,
                              height: size.height * 0.1,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 12, 23, 92),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.settings,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.share,
                                    color: Colors.white,
                                    size: 30,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  //listtitle
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: Row(children: const [
                      Expanded(
                          child: Divider(
                        color: Colors.indigo,
                      )),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 8, bottom: 8, left: 15, right: 15),
                        child: Text(
                          "List of member",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        color: Colors.indigo,
                      )),
                    ]),
                  ),
                  //Player
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.all(0),
                      itemCount: CardPlayer.listCardPlayer.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin:
                              EdgeInsets.only(bottom: 15, left: 25, right: 25),
                          width: double.infinity,
                          height: size.height * 0.06,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2,
                                color: CardPlayer
                                    .listCardPlayer[index].colorPlayer),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color.fromARGB(255, 221, 219, 219),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(1, 1)),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(CardPlayer.listCardPlayer[index].stt
                                        .toString()),
                                    SizedBox(
                                      width: size.width * 0.02,
                                    ),
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'NN',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.02,
                                    ),
                                    Text(CardPlayer
                                        .listCardPlayer[index].namePlayer),
                                  ],
                                ),
                                CardPlayer.listCardPlayer[index].iconPlayer
                                    ? Icon(
                                        Icons.vpn_key,
                                        color: CardPlayer
                                            .listCardPlayer[index].colorPlayer,
                                        size: 15,
                                      )
                                    : Icon(
                                        Icons.remove,
                                        color: Colors.grey,
                                      )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  //button cuoi trang
                  Container(
                    height: size.height * 0.1,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          height: size.height * 0.07,
                          width: size.width * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
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
                          child: Icon(
                            Icons.smart_toy,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: size.height * 0.07,
                          width: size.width * 0.55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.indigo,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text(
                                'Start Game',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              Icon(
                                Icons.rocket_launch,
                                size: 30,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 48,
            left: 30,
            child: Container(
              width: size.height * 0.04,
              height: size.width * 0.08,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
            ),
          ),
          Positioned(
            bottom: 51.5,
            left: 34,
            child: Container(
              width: size.height * 0.03,
              height: size.width * 0.06,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Icon(
                Icons.add,
                size: 15,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

                  // Container(
                  //   margin: EdgeInsets.symmetric(horizontal: 15),
                  //   height: size.height * 0.4,
                  //   width: double.infinity,
                  //   child: Column(
                  //     children: [
                  //       Container(
                  //         margin:
                  //             EdgeInsets.only(left: 5, right: 5, bottom: 15),
                  //         width: double.infinity,
                  //         height: size.height * 0.06,
                  //         decoration: BoxDecoration(
                  //           border: Border.all(
                  //             width: 2,
                  //           ),
                  //           borderRadius: BorderRadius.all(Radius.circular(20)),
                  //           color: Color.fromARGB(255, 221, 219, 219),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: Colors.black.withOpacity(0.3),
                  //               spreadRadius: 2,
                  //               blurRadius: 2,
                  //             ),
                  //           ],
                  //         ),
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(5.0),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Row(
                  //                 children: [
                  //                   Text('1.'),
                  //                   SizedBox(
                  //                     width: size.width * 0.02,
                  //                   ),
                  //                   Container(
                  //                     width: 35,
                  //                     height: 35,
                  //                     decoration: const BoxDecoration(
                  //                       shape: BoxShape.circle,
                  //                       color: Colors.white,
                  //                     ),
                  //                     child: const Center(
                  //                       child: Text(
                  //                         'NN',
                  //                         style: TextStyle(
                  //                             fontSize: 10,
                  //                             color: Colors.black),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   SizedBox(
                  //                     width: size.width * 0.02,
                  //                   ),
                  //                   Text('ngoc nhu'),
                  //                 ],
                  //               ),
                  //               Icon(Icons.key),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  




// Container(
                        //   margin:
                        //       EdgeInsets.only(left: 5, right: 5, bottom: 15),
                        //   width: double.infinity,
                        //   height: size.height * 0.06,
                        //   decoration: BoxDecoration(
                        //     border: Border.all(width: 2, color: Colors.yellow),
                        //     borderRadius: BorderRadius.all(Radius.circular(20)),
                        //     color: Color.fromARGB(255, 221, 219, 219),
                        //     boxShadow: [
                        //       BoxShadow(
                        //         color: Colors.black.withOpacity(0.3),
                        //         spreadRadius: 2,
                        //         blurRadius: 2,
                        //       ),
                        //     ],
                        //   ),
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(5.0),
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //       children: [
                        //         Row(
                        //           children: [
                        //             Text('1.'),
                        //             SizedBox(
                        //               width: size.width * 0.02,
                        //             ),
                        //             Container(
                        //               width: 35,
                        //               height: 35,
                        //               decoration: const BoxDecoration(
                        //                 shape: BoxShape.circle,
                        //                 color: Colors.white,
                        //               ),
                        //               child: const Center(
                        //                 child: Text(
                        //                   'NN',
                        //                   style: TextStyle(
                        //                       fontSize: 10,
                        //                       color: Colors.black),
                        //                 ),
                        //               ),
                        //             ),
                        //             SizedBox(
                        //               width: size.width * 0.02,
                        //             ),
                        //             Text('ngoc nhu'),
                        //           ],
                        //         ),
                        //         Icon(Icons.key),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      
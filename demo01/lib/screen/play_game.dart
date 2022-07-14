import 'package:demo01/config/themes/app_text_style.dart';
import 'package:demo01/screen/create.dart';
import 'package:demo01/screen/join_room.dart';
import 'package:demo01/widget/stateless/tropy_widget.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class PlayGame extends StatelessWidget {
  const PlayGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 35,
              left: 20,
              right: 20,
            ),
            height: double.infinity,
            width: double.maxFinite,
            color: Colors.indigo,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 30.0,
                      ),
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
                          child: Center(
                            child: Text(
                              'NN',
                              style: AppTextStyle.textNameInCircle1,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Your Tropy',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    TropyWidget(
                      colorTropy: Colors.brown,
                      iconTropy: Icons.military_tech,
                    ),
                    TropyWidget(
                      colorTropy: Colors.yellow,
                      iconTropy: Icons.workspace_premium,
                    ),
                    TropyWidget(
                      colorTropy: Colors.grey,
                      iconTropy: Icons.military_tech,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 100),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.indigo,
                        // border: Border.all(width: 5, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      width: double.maxFinite,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.add_circle,
                              color: Colors.white,
                              size: 80.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    duration: Duration(milliseconds: 600),
                                    reverseDuration:
                                        Duration(milliseconds: 600),
                                    curve: Curves.linear,
                                    type:
                                        PageTransitionType.rightToLeftWithFade,
                                    child: Create(),
                                  ),
                                );
                              },
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Create Room',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Choose settings for room '),
                                    Text('before starting room')
                                  ]),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.indigo,
                        // border: Border.all(width: 5, color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      width: double.maxFinite,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.dashboard_customize,
                              color: Colors.white,
                              size: 80.0,
                            ),
                            GestureDetector(
                              onTap: (() {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    duration: Duration(milliseconds: 600),
                                    reverseDuration:
                                        Duration(milliseconds: 600),
                                    curve: Curves.linear,
                                    type:
                                        PageTransitionType.rightToLeftWithFade,
                                    child: JoinRoom(),
                                  ),
                                );
                              }),
                              child: Container(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Join Room',
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('Enter room ID to lobby '),
                                      Text('with your friends')
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 125,
              height: 125,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: const Offset(
                      2.0,
                      2.0,
                    ),
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: const Icon(
                Icons.view_in_ar,
                color: Colors.black,
                size: 50.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:demo01/config/routes/routes.dart';
import 'package:demo01/screen/play_game.dart';
import 'package:demo01/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../widget/stateless/widget_features.dart';
import 'about.dart';
import 'appdemo2/maindemo2.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  double _targetSize = 350;

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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 65,
                  height: 65,
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'ngoc nhu,',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.auto_awesome,
                  color: Colors.yellow,
                  size: 50,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
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
                  //Title home page
                  const ListTile(
                    leading: Icon(
                      Icons.home,
                      size: 40,
                      color: Colors.indigo,
                    ),
                    title: Text(
                      'Home page',
                      style: TextStyle(fontSize: 30, color: Colors.indigo),
                    ),
                  ),
                  //Container play game
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          duration: Duration(milliseconds: 600),
                          reverseDuration: Duration(milliseconds: 600),
                          curve: Curves.linear,
                          type: PageTransitionType.rightToLeftWithFade,
                          child: PlayGame(),
                        ),
                      );
                      // Navigator.of(context).push(FadeRouteBuilder(page: PlayGame()));
                    },
                    child: TweenAnimationBuilder(
                      tween: Tween<double>(
                        begin: 300,
                        end: _targetSize,
                      ),
                      duration: Duration(seconds: 1),
                      onEnd: () {
                        setState(() {
                          if (_targetSize == 300) {
                            _targetSize = 350;
                          } else {
                            _targetSize = 300;
                          }
                        });
                      },
                      curve: Curves.linear,
                      builder: (BuildContext _, double value, Widget? __) {
                        return Container(
                          width: value,
                          height: size.height * 0.15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.indigo,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.token,
                                  color: Colors.white,
                                  size: 80.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Play Game',
                                            style: TextStyle(
                                                fontSize: 37,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Create room and join room',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  //DIVIDE
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(children: const [
                      Expanded(
                          child: Divider(
                        color: Colors.indigo,
                      )),
                      Text(
                        "Some other features",
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
                  //fourfeatures
                  Expanded(
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      children: [
                        InkWell(
                          onTap: () {
                            // PageTransition(
                            //   duration: Duration(milliseconds: 600),
                            //   reverseDuration: Duration(milliseconds: 600),
                            //   curve: Curves.linear,
                            //   type: PageTransitionType.rightToLeftWithFade,

                            // );
                            Navigator.pushNamed(context, Routes.guide);
                          },
                          child: const WidgetFeatures(
                            iconFeatures: Icons.edit,
                            colorFeatures: Colors.orange,
                            subTitle: 'Rules and how to play',
                            title: 'Guide',
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                duration: Duration(milliseconds: 600),
                                reverseDuration: Duration(milliseconds: 600),
                                curve: Curves.linear,
                                type: PageTransitionType.rightToLeftWithFade,
                                child: History(),
                              ),
                            );
                          },
                          child: const WidgetFeatures(
                            iconFeatures: Icons.face,
                            colorFeatures: Colors.blue,
                            subTitle: 'Your information and history',
                            title: 'Profile',
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                duration: Duration(milliseconds: 600),
                                reverseDuration: Duration(milliseconds: 600),
                                curve: Curves.linear,
                                type: PageTransitionType.rightToLeftWithFade,
                                child: MainDemo02(),
                              ),
                            );
                          },
                          child: const WidgetFeatures(
                            iconFeatures: Icons.settings,
                            colorFeatures: Colors.green,
                            subTitle: 'Change settings for game',
                            title: 'Settings',
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            Navigator.push(
                              context,
                              PageTransition(
                                duration: Duration(milliseconds: 600),
                                reverseDuration: Duration(milliseconds: 600),
                                curve: Curves.linear,
                                type: PageTransitionType.rightToLeftWithFade,
                                child: About(),
                              ),
                            );
                          }),
                          child: const WidgetFeatures(
                            iconFeatures: Icons.sms_failed,
                            colorFeatures: Colors.grey,
                            subTitle: 'Infor about us ang feedback',
                            title: 'About us',
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

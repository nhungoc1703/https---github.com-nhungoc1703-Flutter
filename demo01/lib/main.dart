import 'package:demo01/config/routes/routes.dart';
import 'package:demo01/config/themes/app_colors.dart';
import 'package:demo01/config/themes/app_text_style.dart';
import 'package:demo01/screen/about.dart';
import 'package:demo01/screen/appdemo2/maindemo2.dart';
import 'package:demo01/screen/guide.dart';
import 'package:demo01/screen/profile.dart';
import 'package:demo01/screen/play_game.dart';
import 'package:demo01/widget/stateless/widget_features.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'config/routes/router_name.dart';
import 'slider/transition_fade.dart';
import 'slider/transition_left.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
       
      ),
       initialRoute: Routes.firstPage,
        onGenerateRoute: RouterName.generateRoute,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   double _targetSize = 350;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(

//     );
//   }
// }

//  Container(
//     padding: const EdgeInsets.only(
//       left: 20,
//       right: 20,
//       top: 60,
//     ),
//     width: double.infinity,
//     height: double.infinity,
//     color: Colors.indigo,
//     child: Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           width: 65,
//           height: 65,
//           decoration: const BoxDecoration(
//             shape: BoxShape.circle,
//             color: Colors.white,
//           ),
//           child: const Center(
//             child: Text(
//               'NN',
//               style: TextStyle(fontSize: 25, color: Colors.black),
//             ),
//           ),
//         ),
//         const SizedBox(
//           width: 15,
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: const [
//             Text(
//               'Hello',
//               style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold),
//             ),
//             Text(
//               'Welcome',
//               style: TextStyle(
//                 fontSize: 30,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(
//           width: 30,
//         ),
//         const Icon(
//           Icons.videogame_asset,
//           color: Colors.white,
//           size: 60.0,
//         ),
//       ],
//     ),
//   ),
//   Positioned(
//     bottom: 0,
//     child: Container(
//       padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
//       height: 600,
//       width: MediaQuery.of(context).size.width,
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(30),
//           topRight: Radius.circular(30),
//         ),
//       ),
//       child: Column(
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: const [
//               Icon(
//                 Icons.home,
//                 color: Colors.indigo,
//                 size: 42.0,
//               ),
//               const SizedBox(
//                 width: 10,
//               ),
//               Text(
//                 'Home page',
//                 style: TextStyle(
//                     fontSize: 30,
//                     color: Colors.indigo,
//                     fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 10, bottom: 10),
//             child: GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => PlayGame()),
//                 );
//               },
//               child: Container(
//                 height: 120,
//                 width: double.maxFinite,
//                 // margin: EdgeInsets.only(top: 10, bottom: 10),
//                 // padding: EdgeInsets.all(30.0),
//                 decoration: const BoxDecoration(
//                   color: Colors.indigo,
//                   // border: Border.all(width: 5, color: Colors.black),
//                   borderRadius: BorderRadius.all(Radius.circular(20)),
//                 ),
//                 child: Row(children: [
//                   const Padding(
//                     padding: EdgeInsets.only(left: 15),
//                     child: Icon(
//                       Icons.token,
//                       color: Colors.white,
//                       size: 80.0,
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text(
//                         'Play Game',
//                         style: TextStyle(
//                             fontSize: 37,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         'Create room and join room',
//                         style: TextStyle(
//                             fontSize: 15, color: Colors.white),
//                       )
//                     ],
//                   ),
//                 ]),
//               ),
//             ),
//             // child: GestureDetector(
//             //   onTap: () {
//             //     Navigator.push(
//             //       context,
//             //       MaterialPageRoute(builder: (context) => PlayGame()),
//             //     );
//             //   },
//             // ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: const [
//               Text('---------',
//                   style:
//                       TextStyle(fontSize: 20, color: Colors.indigo)),
//               Text('Some other Features',
//                   style:
//                       TextStyle(fontSize: 20, color: Colors.indigo)),
//               Text('---------',
//                   style:
//                       TextStyle(fontSize: 20, color: Colors.indigo)),
//             ],
//           ),
//           Expanded(
//             child: GridView(
//               gridDelegate:
//                   const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 mainAxisSpacing: 20,
//                 crossAxisSpacing: 20,
//               ),
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => Guide()),
//                     );
//                   },
//                   child: const WidgetFeatures(
//                     iconFeatures: Icons.edit,
//                     colorFeatures: Colors.orange,
//                     subTitle: 'Rules and how to play',
//                     title: 'Guide',
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => History()),
//                     );
//                   },
//                   child: WidgetFeatures(
//                     iconFeatures: Icons.face,
//                     colorFeatures: Colors.blue,
//                     subTitle: 'Your information and history',
//                     title: 'Profile',
//                   ),
//                 ),
//                 WidgetFeatures(
//                   iconFeatures: Icons.settings,
//                   colorFeatures: Colors.green,
//                   subTitle: 'Change settings for game',
//                   title: 'Settings',
//                 ),
//GestureDetector(
//                   onTap: (() {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => About()),
//                       );
//                     }
//                   ),
//                   child:WidgetFeatures(
//                   iconFeatures: Icons.sms_failed,
//                   colorFeatures: Colors.grey,
//                   subTitle: 'Infor about us ang feedback',
//                   title: 'About us',
//                 ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     ),
//   ),

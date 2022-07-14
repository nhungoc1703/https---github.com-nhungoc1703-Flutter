

import 'package:flutter/material.dart';

import '../model/card_guide.dart';

class Guide extends StatefulWidget {
  Guide({Key? key}) : super(key: key);

  @override
  State<Guide> createState() => _GuideState();
}

class _GuideState extends State<Guide> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _getCustomAppBar(),
      body: Column(
        children: [
          Container(
            height: 550,
            margin: EdgeInsets.all(8),
            // color: Colors.red,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemCount:
                  CardGuide.listCardGuide.length, //tra lai cai list danh sach
              //widget build du lieu de hien thi ra ben ngoai, index de show tung phan tu
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.indigo,
                          CardGuide.listCardGuide[index].colorGuide,
                        ],
                      ),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CardGuide.listCardGuide[index].iconGuide,
                            color: Colors.white,
                            size: 300.0,
                            shadows: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1, 3),
                                blurRadius: 5,
                              )
                            ],
                          ),
                          Text(
                            CardGuide.listCardGuide[index].titleGuide,
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                shadows: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.5, 0.8),
                                    blurRadius: 0.5,
                                  )
                                ]),
                          )
                        ]),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 9,
            // margin: EdgeInsets.all(8),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              // alignment: Alignment.center,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return buildIndicator(index == _currentIndex, size);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIndicator(bool isActive, Size size) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      width: isActive ? size.width * 1 / 7 : 20,
      decoration: BoxDecoration(
        color: isActive ? Colors.indigo : Colors.grey,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(2, 3),
            blurRadius: 3,
          ),
        ],
      ),
    );
  }
}

_getCustomAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(50),
    child: Container(
      height: 80,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.indigo,
            Colors.black,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              // IconButton(onPressed: (){}, icon: Icon(Icons.undo)),
              Icon(
                Icons.undo,
                color: Colors.white,
                size: 25.0,
              ),
              Text(
                'Skip',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ]),
      ),
    ),
  );
}

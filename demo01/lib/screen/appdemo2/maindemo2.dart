
import 'package:demo01/data_sources/api_services.dart';
import 'package:demo01/screen/appdemo2/secondpage.dart';
import 'package:demo01/widget/stateless/articles_widget.dart';
import 'package:flutter/material.dart';

import '../../model/card_articles.dart';



class MainDemo02 extends StatelessWidget {
  const MainDemo02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.newspaper,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
              height: size.height * 0.1,
              width: double.infinity,
              // color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Favorites',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  Text(
                    'Explore your favorite articles ',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            Expanded(
              child: FutureBuilder<List<Articles>>(
                future: ApiServices().fetchArticles(),
                builder: (Context, snapshot) {
                  List<Articles> articlesList = snapshot.data ?? [];
                  if ((snapshot.hasError)) {
                    return Container(
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                  if (articlesList.isEmpty) {
                    return Center(child: Text('no articles'));
                  }

                  return ListView.builder(
                    itemCount: articlesList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailArticles(
                                  articles: articlesList[index],
                                ),
                              ),
                            );
                          },
                          child: ArticlesWidget(articles: articlesList[index]));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: Icon(Icons.home), onPressed: () {}),
            IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
            SizedBox(
              width: size.width * 0.05,
            ),
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
            IconButton(icon: Icon(Icons.tune), onPressed: () {}),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => DetailArticles()),
          // );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

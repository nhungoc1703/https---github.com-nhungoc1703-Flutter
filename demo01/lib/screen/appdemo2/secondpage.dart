//trang detail tao bien co kieu dũ lieu article
//Articles articlesDetail;
import 'package:flutter/material.dart';

import '../../model/card_articles.dart';



class DetailArticles extends StatelessWidget {
  final Articles? articles;
  const DetailArticles({Key? key, this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Button back and app bar
            Container(
              width: double.infinity,
              height: size.height * 0.12,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.arrow_back,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            //image
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  height: size.height * 0.25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        // image: AssetImage('assests/images/avatar1.jpg'),
                        image: NetworkImage(articles!.urlToImage ?? ''),
                        fit: BoxFit.cover),
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 60,
                  child: Container(
                    width: size.height * 0.05,
                    height: size.width * 0.1,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: Icon(Icons.bookmark),
                  ),
                ),
              ],
            ),
            //author
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'By',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                Text(
                  // articles!.author?.toString()??'',
                  overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                  'author',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            //Title and body articles
            Container(
              width: double.infinity,
              height: size.height * 0.6,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Container(
                  width: double.infinity,
                  // color: Colors.blueAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        articles!.title?.toString() ?? 'no data',
                        // 'Title',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        articles!.description?.toString() ?? 'no data',
                        // 'Body',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 15,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Button buy premier
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.6,
              height: size.height * 0.05,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 190, 189, 189),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.publish),
                  Text(
                    'Read complete story',
                    style: TextStyle(fontSize: 10),
                  ),
                  Text(
                    'Buy Premium ',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 10,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

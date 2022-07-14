import 'package:demo01/model/card_articles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ArticlesWidget extends StatelessWidget {
  final Articles? articles;
  const ArticlesWidget({Key? key, this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
      width: double.infinity,
      height: size.height * 0.15,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.16,
            width: size.width * 0.35,
            // margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    // image: AssetImage('assests/images/avatar1.jpg'),
                    image: NetworkImage(articles!.urlToImage ?? ''),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15)),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: size.height * 0.16,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      articles!.title?.toString()??'no data',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      // '24 june,2021*12 min read',
                      articles!.parseDatetimeToString(),
                      // DateFormat('yyyy-MM-dd – kk:mm').format(articles!.publishedAt!),
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              width: size.width * 0.08,
              height: size.height * 0.04,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  const Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 1,
                    // offset: const Offset(
                    //   2.0,
                    //   2.0,
                    // ),
                  ),
                ],
              ),
              child: const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
    ;
  }
}

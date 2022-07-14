import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:convert' as json;
import '../model/card_articles.dart';
import '../model/card_join.dart';
import 'api_urls.dart';

class ApiServices {
  Future<List<CardJoinRoom>> fetchUser() {
    return http.get(ApiUrls().API_JOINROOM_LIST).then((http.Response response) {
      final String jsonBody = response.body;
      final int statusCode = response.statusCode;

      if (statusCode != 200 || jsonBody == '') {
        print(response.reasonPhrase);
        throw new Exception("Lỗi load api");
      }

      final JsonDecoder _decoder = new JsonDecoder();
      final useListContainer = _decoder.convert(jsonBody);
      final List CardJoinRoomllist = useListContainer['results'];
      final List<CardJoinRoom> listOwner = CardJoinRoomllist.map(
          (contactRaw) => new CardJoinRoom.fromJson(contactRaw)).toList();
      return listOwner;
    });
  }

  Future<List<Articles>> fetchArticles() async {
    return http.get(ApiUrls().API_ARTICLES_LIST).then((http.Response response) {
      final String jsonBody = response.body;
      final int statusCode = response.statusCode;

      if (statusCode != 200 || jsonBody == '') {
        print(response.reasonPhrase);
        throw new Exception("Lỗi load api");
      }

      final JsonDecoder _decoder = new JsonDecoder();
      final useListContainer = _decoder.convert(jsonBody);
      final List articleslist = useListContainer['articles'];
      final List<Articles> listArticles = articleslist
          .map((contactRaw) =>  Articles.fromJson(contactRaw))
          .toList();
      return listArticles;
    });
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/model/Article_Model.dart';

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=7a254c64c0f8475e92988d510e2bf321";

    final response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach(
        (element) {
          if (element['urlToImage'] != null &&
              element['description'] != null &&
              element['title'] != null &&
              element['author'] != null &&
              element['url'] != null &&
              element['content'] != null) {
            ArticleModel articleModel = ArticleModel(
              title: element['title'],
              author: element['author'],
              description: element['description'],
              link: element['url'],
              image_url: element['urlToImage'],
              content: element['content'],
              // pubDate: element['pubDate'],
              // publishDate: element["publishDate"],
            );
            news.add(articleModel);
          }
        },
      );
    }
  }
}


// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:news/model/Article_Model.dart';

// class News {
//   List<ArticleModel> news = [];

//   Future<List<ArticleModel>> getNews() async {
//     String url =
//         "https://newsdata.io/api/1/news?country=lk&category=top&apikey=pub_2693367c38c029a84e64febdf9861799e5bb0";

//     try {
//       final response = await http.get(Uri.parse(url));

//       if (response.statusCode == 200) {
//         var jsonData = jsonDecode(response.body);
//         if (jsonData['status'] == 'ok') {
//           jsonData['results'].forEach((element) {
//             if (element['image_url'] != null &&
//                 element['description'] != null) {
//               ArticleModel articleModel = ArticleModel(
//                 title: element['title'],
//                 // author: element['creator'],
//                 description: element['description'],
//                 link: element['link'],
//                 image_url: element['image_url'],
//                 content: element['content'],
//                 // publishDate: element["publishDate"],
//               );
//               news.add(articleModel);
//             }
//           });
//         }
//       } else {
//         print('Failed to load news: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error fetching news: $e');
//     }

//     return news;
//   }
// }

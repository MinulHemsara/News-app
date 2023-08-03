import 'package:flutter/material.dart';
import 'package:news/widgets/article.dart';

class NewsTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String desc
      // url
      ;
  NewsTile({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.desc,
    // required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ArticleScreen(
                newsURL: imageUrl,
              ),
            ));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(imageUrl)),
            Text(
              title,
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              desc,
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}

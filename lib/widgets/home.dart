import 'package:flutter/material.dart';
import 'package:news/data/data.dart';
import 'package:news/data/news.dart';
import 'package:news/model/Article_Model.dart';
import 'package:news/model/category_model.dart';
import 'package:news/widgets/categorytile.dart';
import 'package:news/widgets/newstile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel>? categories;
  List<ArticleModel>? articles;
  bool _loading = true;
  @override
  void initState() {
    categories = getcategories();
    super.initState();
    getNews();
  }

  getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Today",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              "News",
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: _loading
          ? Center(
              child: Container(
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 70,
                      child: ListView.builder(
                        itemBuilder: (context, index) => CategoryTile(
                          imageUrl: categories![index].imageUrl,
                          categoryName: categories![index].categoryName,
                        ),
                        itemCount: categories!.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 16),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, index) => NewsTile(
                          imageUrl: articles![index].image_url,
                          title: articles![index].title,
                          desc: articles![index].description,
                          // url: articles![index].link,
                        ),
                        itemCount: articles!.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

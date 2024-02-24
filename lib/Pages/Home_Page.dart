import 'package:flutter/material.dart';
import 'package:new_flutter_project/Widgets/cat_card.dart';
import 'package:new_flutter_project/Widgets/news_tile.dart';
import 'package:new_flutter_project/services/NewsListViewBulider.dart';
import 'package:new_flutter_project/services/news_service.dart';
import '../models/article_model.dart';

List N = [];
Future<List<ArticleModel>>? future;

class Home_Page extends StatefulWidget {
  const Home_Page({super.key, this.catt});
  final catt;

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  void initState() {
    future = NewsService(cat: widget.catt).GetNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEEEEEE),
        appBar: AppBar(
          backgroundColor: const Color(0xffEEEEEE),
          centerTitle: true,
          title: RichText(
            text: const TextSpan(children: [
              TextSpan(
                  text: "News ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: 'Cloud',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.bold))
            ]),
          ),
        ),
        body: NewsListViewBuilder(catt: widget.catt),
    );
  }
}

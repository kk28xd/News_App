import 'package:flutter/material.dart';
import '../Pages/Home_Page.dart';
import '../Widgets/cat_card.dart';
import '../Widgets/news_tile.dart';
import 'news_service.dart';
class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, this.catt});
  final catt;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}
class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  @override
  void initState() {
    future = NewsService(cat: widget.catt).GetNews();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            N = snapshot.data!;
            if (N.isEmpty) {
              return const Center(
                child: Text("there is an error, please try again",
                    style: TextStyle(fontSize: 20)),
              );
            } else {
              return ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const SizedBox(
                    height: 100,
                    child: CatCard(),
                  ),
                  const SizedBox(height: 5),
                  ...neww(snapshot.data!),
                ],
              );
            }
          }
        });
  }
}

class ArticleModel{
  final String? img;
  final String title;
  final String? des;
  final String date;
  ArticleModel({required this.date, required this.img, required this.title, required this.des});
  factory ArticleModel.fromJson (i){
    return ArticleModel(
        img: i['urlToImage'],
        title: i['title'],
        des: i['description'],
        date : i['publishedAt']
    );
  }
}
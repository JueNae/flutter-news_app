class NewsData {
  String? title;
  String? author;
  String? content;
  String? date;
  String? urlToImage;

  NewsData(this.title, this.author, this.content, this.date, this.urlToImage);

  // use dummy data
  static List<NewsData> breakingNewsData = [
    NewsData(
      " Testing ",
      "123",
      "heyy",
      "2022-08-11",
      "https://picsum.photos/250?image=9",
    ),
    NewsData(
      " Testing ",
      "123",
      "heyy",
      "2022-08-11",
      "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif",
    ),
  ];

  static List<NewsData> recentNewsData = [
    NewsData(
      " Testing ",
      "123",
      "heyy",
      "2022-08-11",
      "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif",
    ),
    NewsData(
      " Testing ",
      "123",
      "heyy",
      "2022-08-11",
      "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif",
    ),
  ];
}

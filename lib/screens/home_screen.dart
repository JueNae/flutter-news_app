import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/components/news_list_title.dart';
import 'package:news_app/models/news_model.dart';

import '../components/breaking_news_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          "NewsApp",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Breaking News",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider.builder(
                  itemCount: NewsData.breakingNewsData.length,
                  itemBuilder: (context, index, id) =>
                      BreakingNewsCard(NewsData.breakingNewsData[index]),
                  options: CarouselOptions(
                      aspectRatio: 16 / 9, enableInfiniteScroll: false)),
              SizedBox(
                height: 40,
              ),
              Text(
                "Recent",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              // create card for recent news
              Column(
                children: NewsData.recentNewsData
                    .map((e) => NewsListTile(e))
                    .toList(),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        // make button nav bar float
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16),
        ),
        child: BottomNavigationBar(
          elevation: 0.0,
          selectedItemColor: Colors.orangeAccent.shade100,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
              ),
              label: "Bookmark",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.rss_feed_rounded,
              ),
              label: "RSS",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}

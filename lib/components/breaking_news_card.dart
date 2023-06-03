import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/screens/details_screen.dart';

class BreakingNewsCard extends StatefulWidget {
  BreakingNewsCard(this.data, {Key? key}) : super(key: key);

  NewsData data;
  @override
  State<BreakingNewsCard> createState() => _BreakingNewsCardState();
}

class _BreakingNewsCardState extends State<BreakingNewsCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsScreen(widget.data)));
      },
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            fit: BoxFit.contain,
            image: NetworkImage(widget.data.urlToImage!),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.data.title!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                widget.data.author!,
                style: TextStyle(
                    color: Colors.white60,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

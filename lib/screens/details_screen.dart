import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen(this.data, {Key? key}) : super(key: key);
  NewsData data;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.orangeAccent.shade100),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.data.title!,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              widget.data.author!,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Hero(
              tag: "${widget.data.title}",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(widget.data.urlToImage!),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(widget.data.content!),
          ],
        ),
      ),
    );
  }
}

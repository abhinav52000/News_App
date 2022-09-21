import 'package:flutter/material.dart';
import 'package:news_app/Constants/constant.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.heading,
    required this.date,
    required this.newsfeed,
  });

  final String heading;
  final String date;
  final String newsfeed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        border: Border.all(
          color: tabbartextcolor,
        ),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      constraints: BoxConstraints.tightFor(
        width: MediaQuery.of(context).size.width * 0.75,
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(heading),
            Text(date),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(newsfeed),
        const SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Icon(
            Icons.turn_right_rounded,
            color: Colors.black.withOpacity(0.6),
          ),
        )
      ]),
    );
  }
}

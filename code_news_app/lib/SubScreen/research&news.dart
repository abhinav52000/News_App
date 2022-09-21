import 'package:flutter/material.dart';
import 'package:news_app/Constants/constant.dart';
import 'package:news_app/Widgets/newscard.dart';

class ResearchAndNews extends StatefulWidget {
  const ResearchAndNews({super.key});

  @override
  State<ResearchAndNews> createState() => _ResearchAndNewsState();
}

class _ResearchAndNewsState extends State<ResearchAndNews> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
              vertical: 10,
            ),
            child: Text(
              '215 Expert Opinion',
              style: headtext,
            ),
          ),
          Image.asset(
            'asset/resource.png',
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 150,
            child: CustomScrollView(
              scrollDirection: Axis.horizontal,
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Column(
                        children: [
                          index % 2 == 0
                              ? const NewsCard(
                                  heading: 'Thehill',
                                  date: '1 Sept 2020',
                                  newsfeed:
                                      'Last week, the dire warnings that appeared in the Wall Street Journal, The Economist and Foreign Affairs about China\'s imminent war with or...',
                                )
                              : const NewsCard(
                                  heading: 'BBC',
                                  date: '1 Sept 2020',
                                  newsfeed:
                                      'Most people the BBC spoke to do not believe China is about to attack Taiwan. "They\'re a bunch of gangsters," said one man fishing on the...'),
                        ],
                      );
                    },
                    childCount: 4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

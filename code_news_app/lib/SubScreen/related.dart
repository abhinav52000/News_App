import 'package:flutter/material.dart';
import 'package:news_app/bottom%20screen/relatedbottomsheet.dart';

class Related extends StatefulWidget {
  const Related({super.key});

  @override
  State<Related> createState() => _RelatedState();
}

class _RelatedState extends State<Related> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        realatedbottomsheet(context);
      }),
      child: Image.asset(
        'asset/related.png',
        fit: BoxFit.fill,
      ),
    );
  }
}

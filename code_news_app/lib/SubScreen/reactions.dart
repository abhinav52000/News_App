import 'package:flutter/material.dart';
import 'package:news_app/bottom%20screen/commentbottomsheet.dart';

class Reaction extends StatefulWidget {
  const Reaction({super.key});

  @override
  State<Reaction> createState() => _ReactionState();
}

class _ReactionState extends State<Reaction> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        commentbottomsheet(context);
      }),
      child: Image.asset(
        'asset/reaction.png',
        fit: BoxFit.fill,
      ),
    );
  }
}

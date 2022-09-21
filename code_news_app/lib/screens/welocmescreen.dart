import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Constants/constant.dart';
import 'package:news_app/SubScreen/reactions.dart';
import 'package:news_app/SubScreen/related.dart';
import 'package:news_app/SubScreen/research&news.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  static const id = 'Welcome Screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(
                    'asset/flagimg.jpg',
                  ),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5),
                    BlendMode.darken,
                  ),
                ),
              ),
              constraints: BoxConstraints.tightFor(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    CupertinoIcons.arrowshape_turn_up_right_fill,
                    color: Colors.white.withOpacity(0.8),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Will China invade Taiwan \nbefore end september?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      IconButton(
                        onPressed: (() {}),
                        icon: const Icon(
                          CupertinoIcons.equal,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.elliptical(30, 20),
                  bottomRight: Radius.elliptical(30, 20),
                ),
                image: DecorationImage(
                    image: const AssetImage(
                      'asset/containerbg.png',
                    ),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.0),
                      BlendMode.darken,
                    )),
              ),
              constraints: const BoxConstraints.tightFor(
                height: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RawMaterialButton(
                    onPressed: (() {
                      setState(() {
                        reserchandnewsshow = true;
                        reactionshow = false;
                        relatedshow = false;
                      });
                    }),
                    child: Text(
                      'Reearch & News',
                      style: tabbartext.copyWith(
                        color:
                            reserchandnewsshow ? Colors.pink : tabbartextcolor,
                      ),
                    ),
                  ),
                  RawMaterialButton(
                    onPressed: (() {
                      setState(() {
                        reserchandnewsshow = false;
                        reactionshow = true;
                        relatedshow = false;
                      });
                    }),
                    child: Text(
                      'Reactions',
                      style: tabbartext.copyWith(
                        color: reactionshow ? Colors.pink : tabbartextcolor,
                      ),
                    ),
                  ),
                  RawMaterialButton(
                    onPressed: (() {
                      setState(() {
                        reserchandnewsshow = false;
                        reactionshow = false;
                        relatedshow = true;
                      });
                    }),
                    child: Text(
                      'Related',
                      style: tabbartext.copyWith(
                        color: relatedshow ? Colors.pink : tabbartextcolor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            Visibility(
              visible: reserchandnewsshow,
              child: const ResearchAndNews(),
            ),
            Visibility(
              visible: reactionshow,
              child: const Reaction(),
            ),
            Visibility(
              visible: relatedshow,
              child: const Related(),
            )
          ],
        ),
      ),
      bottomNavigationBar: Image.asset(
        'asset/bottombar.png',
      ),
    );
  }
}






//  BottomSheet(
      //     constraints: BoxConstraints.tightFor(
      //         width: MediaQuery.of(context).size.width,
      //         height: MediaQuery.of(context).size.height / 2),
      //         onDragEnd: (),
      //     // animationController: ,
      //     backgroundColor: Colors.pink,
      //     enableDrag: true,
      //     onClosing: (() {}),
      //     builder: ((context) {
      //       return Column(
      //         children: [Text('data'), Text('data2')],
      //       );
      //     }))
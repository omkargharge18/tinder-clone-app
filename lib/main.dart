import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:tinder/constants.dart/constant.dart';
import 'package:tinder/function/actions.dart';
import 'package:tinder/widgets/appbar.dart';
import 'package:tinder/widgets/bottombar.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showStarsGif = false;
  bool right = false;
  bool left = false;
  bool isPressed = false;
  final List<SwipeItem> _swipeItems = <SwipeItem>[];
  MatchEngine? _matchEngine;
  List<String> names = [
    'Andrews',
    'Master G',
    'Cristine',
    'Grammys',
    'Alex GH',
    'Andrews',
    'Master G',
    'Cristine',
    'Grammys',
    'Alex GH',
    'Andrews',
    'Master G',
    'Cristine',
    'Grammys',
    'Alex GH',
    'Andrews',
    'Master G',
    'Cristine',
    'Grammys',
    'Alex GH'
  ];
    final storyController = StoryController();
   @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }
  
  @override
  void initState() {
    for (int i = 0; i < images.length; i++) {
      _swipeItems.add(SwipeItem(
        content: Content(text: names[i]),
        likeAction: () {
          // actions(context, names[i], 'Liked');
          setState(() {
            showStarsGif = true;
          });

          Timer(const Duration(seconds: 2), () {
            setState(() {
              showStarsGif = false;
            });
          });
        },
        // nopeAction: () {
        //   actions(context, names[i], 'Rejected');
        // },
        // superlikeAction: () {
        //   actions(context, names[i], 'SuperLiked');
        // }
      ));
    }
    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 70),
          const TopBar(),
          Expanded(
            child: Stack(
              children: [
                SingleChildScrollView(
                  physics: isPressed
                      ? const BouncingScrollPhysics()
                      : const NeverScrollableScrollPhysics(),
                  child: SizedBox(
                    // color: Colors.amber,
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 1,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          SwipeCards(
                            matchEngine: _matchEngine!,
                            itemBuilder: (BuildContext context, int index) {
                              return
                                 AnimatedContainer(
                                duration: const Duration(seconds: 100),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(
                                  children: [
                                    SingleChildScrollView(
                                      physics: isPressed
                                          ? const BouncingScrollPhysics()
                                          : const NeverScrollableScrollPhysics(),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        child: Column(
                                          children: [
                                            Stack(
                                              children: [
                                                ClipRRect(
                                                  child: Container(
                                                    decoration:BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20)
                                                    ),     
                                                    height: isPressed
                                                        ? MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.5
                                                        : MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.68, // Adjust the height as needed
                                                    child: StoryView(
                                                      storyItems: List.generate(
                                                        images.length,
                                                        (index) {
                                                          return StoryItem .pageImage(
                                                             url: images[index],
                                                           
                                                            controller: storyController,
                                                          );
                                                        },
                                                      ),
                                                      progressPosition:
                                                          ProgressPosition.top,
                                                      repeat: false,
                                                      inline: true,
                                                      controller:
                                                          storyController,
                                                    ),
                                                  ),

                                                  // Container(
                                                  //   height:
                                                  // isPressed
                                                  //       ? MediaQuery.of(context)
                                                  //               .size
                                                  //               .height *
                                                  //           0.5
                                                  //       : MediaQuery.of(context)
                                                  //               .size
                                                  //               .height *
                                                  //           0.68,
                                                  //   width:
                                                  //       MediaQuery.of(context)
                                                  //               .size
                                                  //               .width *
                                                  //           0.82,
                                                  //   alignment:
                                                  //       Alignment.bottomLeft,
                                                  //   decoration: BoxDecoration(
                                                  //       image: DecorationImage(
                                                  //           image: NetworkImage(
                                                  //               images[index]),
                                                  //           fit: BoxFit.cover),
                                                  //       color: Colors.white,
                                                  //       borderRadius:
                                                  //           BorderRadius
                                                  //               .circular(10)),
                                                  //   padding:
                                                  //       const EdgeInsets.all(
                                                  //           20),
                                                  //   child: Column(
                                                  //     mainAxisSize:
                                                  //         MainAxisSize.min,
                                                  //     children: [
                                                  //       Text(
                                                  //         names[index],
                                                  //         style: const TextStyle(
                                                  //             fontSize: 32,
                                                  //             color:
                                                  //                 Colors.white,
                                                  //             fontWeight:
                                                  //                 FontWeight
                                                  //                     .bold),
                                                  //       ),
                                                  //     ],
                                                  //   ),
                                                  // ),
                                                ),

                                                // Positioned(
                                                //   top: 200,
                                                //   left: 150,

                                                //   child: Center(
                                                //     child: Visibility(
                                                //       visible: true,
                                                //       child: Image.asset(
                                                //         'assets/stars.gif',
                                                //         width: 200,
                                                //       ), // Replace with your GIF asset path
                                                //     ),
                                                //   ),
                                                // ),
                                                // Positioned(
                                                //   top: 200,
                                                //   left: 200,
                                                //   child: Center(
                                                //     child: Visibility(
                                                //       visible: true,
                                                //       child: Image.asset(

                                                //         'assets/cross.png',
                                                //         width: 100,
                                                //       ), // Replace with your GIF asset path
                                                //     ),
                                                //   ),
                                                // ),
                                                Positioned(
                                                  top: 200,
                                                  left: 180,
                                                  child: Center(
                                                    child: Visibility(
                                                      visible: showStarsGif,
                                                      child: Image.asset(
                                                        'assets/stars.gif',
                                                        width: 150,
                                                        height: 130,
                                                      ), // Replace with your GIF asset path
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            isPressed
                                                ? ClipRRect(
                                                    child: Container(
                                                      height: isPressed
                                                          ? MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.5
                                                          : MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.7,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.8,
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: NetworkImage(
                                                                  images[
                                                                      index]),
                                                              fit:
                                                                  BoxFit.cover),
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            names[index],
                                                            style: const TextStyle(
                                                                fontSize: 32,
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                : const SizedBox.shrink(),
                                            isPressed
                                                ? Card(
                                                    child: Container(
                                                      width: double.infinity,
                                                      height:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .height,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: Colors.white,
                                                      ),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          isPressed
                                                              ? Center(
                                                                  child: Text(
                                                                      "Omkar Gharge"
                                                                          .toUpperCase(),
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              32,
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight: FontWeight
                                                                              .bold),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left),
                                                                )
                                                              : const Text(''),
                                                          isPressed
                                                              ? const Center(
                                                                  child: Text(
                                                                      " Flutter Developer",
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .grey,
                                                                        fontSize:
                                                                            24,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left),
                                                                )
                                                              : const Text(''),
                                                          isPressed
                                                              ? const Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child: Text(
                                                                      " A Flutter developer is a software engineer who specializes in building applications using the Flutter framework, which is developed by Google. Flutter is an open-source UI software development kit that is used to create natively compiled applications for mobile, web, and desktop platforms from a single codebase. Flutter developers are proficient in Dart, the programming language used for building Flutter applications. They are responsible for designing, developing, and maintaining cross-platform applications with a focus on delivering an engaging and responsive user experience. ",
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left),
                                                                )
                                                              : const Text(''),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                : const SizedBox.shrink(),

                                            const SizedBox(
                                              height: 20,
                                            ),
                                            // second
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            onStackFinished: () {
                              return ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('The List is over')));
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                isPressed
                    ? Positioned(
                        top: 630,
                        left: 270,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isPressed = !isPressed;
                            });
                          },
                          child: buttonWidget(Icons.arrow_upward, Colors.black),
                        ),
                      )
                    : Positioned(
                        top: 500,
                        left: 250,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isPressed = !isPressed;
                            });
                          },
                          child: buttonWidget(Icons.arrow_upward, Colors.black),
                        ),
                      )
              ],
            ),
          ),
          isPressed ? const SizedBox.shrink() : const BottomBar()
        ],
      ),
    );
  }
}

class Content {
  final String? text;
  Content({this.text});
}

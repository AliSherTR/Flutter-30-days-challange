import 'package:flutter/material.dart';
import 'package:fluuter_course/pages/Day5.dart';
import 'package:fluuter_course/pages/youtube-search-page/youtube_search.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const YoutubeSearch()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        body: Center(
          child: Text("Welcome Flutter\n Day 1")
        ),
      )
    );
  }
}

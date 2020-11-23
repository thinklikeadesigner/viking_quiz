import 'package:flutter/material.dart';

import 'quiz/quiz_home_view.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Viking Quiz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: QuizHomeView(title: 'Flutter Viking Quiz'),
    );
  }
}

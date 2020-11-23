import 'package:flutter/material.dart';
import 'package:navigationapp/quiz/quiz_home_view.dart';
import 'package:navigationapp/screens/error_route.dart';
import 'package:navigationapp/screens/first_page.dart';
import 'package:navigationapp/screens/results_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;
    //settings.arguments is if you need to send data to a page
    //https://flutter.dev/docs/cookbook/navigation/navigate-with-arguments
    //https://flutter.dev/docs/cookbook/navigation/returning-data
    //https://flutter.dev/docs/cookbook/navigation/passing-data

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => FirstPage());
        break;
      case '/quizhomeview':
        return MaterialPageRoute(
            builder: (_) => QuizHomeView(
                  title: "Flutter Quiz",
                ));
        break;
      case '/resultspage':
        return MaterialPageRoute(builder: (_) => ResultsPage());
        break;
      default:
        return MaterialPageRoute(builder: (_) => ErrorRoutePage());
        break;
    }
  }
}

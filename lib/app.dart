import 'package:flutter/material.dart';
import 'route_generator/route_generator.dart';
import 'screens/first_page.dart';

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
      home: FirstPage(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

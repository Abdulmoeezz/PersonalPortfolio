import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/home_view_start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PORTFOLIO',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          canvasColor: Colors.black, // For Material widgets' default color
          dialogBackgroundColor: Colors.black, // For dialog backgrounds
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      home: HomeViewStartPage(),
    );
  }
}


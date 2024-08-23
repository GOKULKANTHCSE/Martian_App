import 'package:flutter/material.dart';
import 'package:go_moon/pages/home_pages.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Martian',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(scaffoldBackgroundColor: Color.fromRGBO(45, 45, 45, 0.5)),
      home: HomePages(),
    );
  }
}

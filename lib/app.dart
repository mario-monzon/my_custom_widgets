import 'package:flutter/material.dart';
import 'package:my_custom_widgets/screen/home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (_) => Home(),
      },
    );
  }
}

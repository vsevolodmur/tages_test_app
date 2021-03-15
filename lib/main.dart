import 'package:flutter/material.dart';
import 'package:tages_test_app/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tages Test App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyText2: TextStyle(fontWeight: FontWeight.w500),
        ).apply(
          bodyColor: Color(0xff3827B4),
        
        ),
      ),
      home: HomePage(),
    );
  }
}

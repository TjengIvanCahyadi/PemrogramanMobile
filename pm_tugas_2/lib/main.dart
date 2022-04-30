import 'package:flutter/material.dart';
import 'package:pm_tugas_2/detail_page.dart';
import 'package:pm_tugas_2/home_page.dart';
import 'package:pm_tugas_2/landing_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/dua': (context) => HomePage(),
        '/tiga': (context) => DetailPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

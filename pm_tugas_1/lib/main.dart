import 'dart:js';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 1 Pemrograman Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Tjeng, Ivan Cahyadi 2009106146"),
        centerTitle: true,
        backgroundColor: Color(0xff118ab2),
      ),
      body: Center(
        child: Container(
          width: mediaQueryWidth,
          height: mediaQueryHeight,
          decoration: BoxDecoration(
            color: Color(0xffffd166),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Container for image
              Container(
                width: 300,
                height: 300,
                margin: EdgeInsets.only(
                  bottom: 10.0,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/vivoV23e.png"),
                  ),
                ),
              ),
              // Container for text
              Container(
                width: 300,
                margin: EdgeInsets.only(
                  bottom: 10.0,
                ),
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Color(0xff118ab2),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  "Vivo V23e 8/128",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 300,
                margin: EdgeInsets.only(
                  bottom: 10.0,
                ),
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Color(0xffef476f),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  "Rp3.999.000,00",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 10.0,
                ),
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Color(0xff073b4c),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  "Tekan tombol dibawah? Lihat linknya pada debug console!",
                  style: TextStyle(
                    color: Colors.red[200],
                    fontSize: 11.0,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () => print(
                    "https://www.facebook.com/marketplace/item/649907816241979/"),
                label: Text("Link Facebook Marketplace"),
                icon: Icon(Icons.local_grocery_store_outlined),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  padding: EdgeInsets.all(20.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

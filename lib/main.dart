import 'package:emergency/colors.dart';
import 'package:emergency/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Emergency',
      locale: Locale('ar'),
      theme: ThemeData(
        primarySwatch: Colors.purple,
        appBarTheme: AppBarTheme(
          color: mainColor,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Builder(
        builder: (context) {
          return Directionality(
            child: HomePage(),
            textDirection: TextDirection.rtl,
          );
        },
      ),
    );
  }
}

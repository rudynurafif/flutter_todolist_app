import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todolist_app/pages/home_page.dart';

void main() async {
  // init the hive
  await Hive.initFlutter();

  // open a box
  var box = await Hive.openBox('myBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: ThemeData(
            primarySwatch: Colors.yellow,
            appBarTheme: AppBarTheme(backgroundColor: Colors.yellow),
            floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.yellow)));
  }
}

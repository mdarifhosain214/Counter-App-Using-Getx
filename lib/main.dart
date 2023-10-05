import 'package:counter_app_using_getx/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Colors.blueGrey,
          elevation: 0,
          titleTextStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w700)
        )
      ),
      home: const  HomeScreen()
    );
  }
}



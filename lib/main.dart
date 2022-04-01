import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/list_repo_screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   listRepos: (ctx) => ListRepo(),
      //   detailRepo: (ctx) => DetailsRepo(),
      // },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.black,
        brightness: Brightness.dark,
        dividerColor: Colors.white,
        textTheme: TextTheme(
          headline5: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.lightBlue,
          ),
          headline4: TextStyle(
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 18,
            color: Colors.blue,
          ),
          bodyText2: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Colors.white70,
          ),
          subtitle1: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Colors.white60,
          ),
        ),
      ),
      home: ListRepo(),
    );
  }
}

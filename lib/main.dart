import 'package:flutter/material.dart';
import 'package:proyect_reto04/dados_home.dart';
import 'package:proyect_reto04/fitgman.dart';
import 'package:proyect_reto04/future.dart';
import 'package:proyect_reto04/home_page.dart';
import 'package:proyect_reto04/initPage.dart';
import 'package:proyect_reto04/utils.dart';
void main(){

  runApp(const MyApp());

}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      home: HomePage(),
    );
  }
}


import 'package:flutter/material.dart';
import 'Pages/HomePage.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super .key});
  
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: HomePage(),

      //for remove demo banner
      debugShowCheckedModeBanner: false,
    );
  }
}
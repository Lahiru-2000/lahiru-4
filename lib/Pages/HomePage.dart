import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super1, key});
  
  @override

Widget build (BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text('AppBar'),elevation: 0,
    ),
    body: const Center(
      child: Text('Hi'),
    ),
  );
  }
}
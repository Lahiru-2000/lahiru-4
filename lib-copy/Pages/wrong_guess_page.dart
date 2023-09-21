import 'dart:ui';

import 'package:flutter/material.dart';


class WrongGuessPage extends StatelessWidget{
  const WrongGuessPage({super.key});
  

  @override
  Widget build(BuildContext context){

  Size size=MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Guess Game"),
      ),
      
      body: Container(
        color: const Color.fromARGB(187, 216, 162, 162),
        child: Center(
          
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                   const Text("Sorry Wrong Guess. Please try again",
                   style: TextStyle(fontSize: 17),),
                    
                    SizedBox(
                          height: size.height/25,
                        ),
                  
                  SizedBox(
                    height: 35,
                    child: ElevatedButton(onPressed: (){
                       
                      //go to home page(go back)
                      //there is a code to go back
                      Navigator.pop(context);
                      //Navigator.pushReplacement(context,
                         // MaterialPageRoute(builder: (context) => const HomePage()),
                     // );
                    }, 
                    child: const Text("Try Again",
                    style: TextStyle(fontSize: 16),),
                    ),
                  ),   
                  
                ],
              ),
        ),
      ),
    );
  }
}
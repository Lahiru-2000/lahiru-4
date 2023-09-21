import 'package:flutter/material.dart';
import 'package:guess_game/Pages/home_page.dart';

class GameOverPage extends StatelessWidget{
      final int number;
   const GameOverPage({super.key, required this.number});


    @override
      Widget build(BuildContext context){
     Size size=MediaQuery.of(context).size;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Guess Game")
            ),

          body: Container(
            color: const Color.fromARGB(255, 154, 214, 231),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [

                  const Text("Sorry Game Over. My secret number is ",
                   style: TextStyle(fontSize: 17),
                   ),

                     SizedBox(
                          height: size.height/25,
                        ),

                         Text("$number"),

                    SizedBox(
                          height: size.height/25,
                        ),


                  SizedBox(
                    height: 35,
                    width: 210,
                    child: ElevatedButton(
                      onPressed: (){
                        
                      //go to home page (push replacement)
                      Navigator.pushReplacement(context,
                           MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                      
                    }, 
                    
                    child: const Text("Start the Game Again",
                    style: TextStyle(fontSize: 17),
                    )
                    ),
                  ),   
                  
                ],
              ),
            ),
          ),
        );

    }

}
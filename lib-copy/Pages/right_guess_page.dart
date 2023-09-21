import 'package:flutter/material.dart';
import 'package:guess_game/Pages/home_page.dart';

class RightGuessPage extends StatelessWidget{
    final int number;
  const RightGuessPage({super.key, required this.number});
  


  //const RightGuessPage({super.key, required number, required int count});
  
  @override
  Widget build(BuildContext context)
  {
Size size=MediaQuery.of(context).size;

       return Scaffold(
        appBar: AppBar(
          title: const Text("Guess Game"),
        ),

        body: Container(
          color: const Color.fromARGB(255, 184, 227, 165),
          child: Center(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  const Text("Yes! you guessed it right. My secret number is",
                  style:  TextStyle(fontSize: 16),),

                     SizedBox(
                          height: size.height/18,
                        ),
                        
                    Text("$number",
                    style: const TextStyle(fontSize: 25),
                    ),

                    SizedBox(
                          height: size.height/25,
                        ),

                  SizedBox(
                    height: 35,
                    child: ElevatedButton(onPressed: (){  
                      //go to home page (push replacement)
                      Navigator.pushReplacement(context,
                           MaterialPageRoute(builder: (context) =>  const HomePage()),
                           );
                           
                    }, 
                    child: const Text("Start Again",
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
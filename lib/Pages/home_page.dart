import 'dart:math';
import 'package:flutter/material.dart';
import 'package:guess_game/Pages/right_guess_page.dart';
import 'package:guess_game/Pages/wrong_guess_page.dart';
import 'game_over.dart';

class HomePage extends StatefulWidget{
   const HomePage({super.key});
//we cant store values with stateless widget

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

final myController = TextEditingController();

String guessNumber="";

int myNumber=0;
int counter=0;

  @override
  Widget build(BuildContext context ){

  Size size=MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar( title: const Text("Guess Game"),
      ),

           body: SingleChildScrollView(

              child: Container(
              height: size.height,
              width: double.infinity,
              color: const Color.fromARGB(255, 255, 255, 255),
              
               child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
               //crossAxisAlignment: CrossAxisAlignment.center,
           
                        children: [

                        SizedBox(
                        height: size.height/13,
                        ),
           
                      // ignore: sized_box_for_whitespace
                        Center(
                          child: Image.asset("assets/guess.png",
                          height: size.height/4,
                          fit: BoxFit.cover,
                          ),
                        ),
           
                        SizedBox(
                          height: size.height/18,
                        ),
                      
                        const Text("I have a secret number in my mind (1-10). You have 3 chances to guess it. Can you guess it?",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                        ),
           
                        SizedBox(
                        height: size.height/25,
                        ),
           
                        Text("$counter of 3 chances are taken",
                        style: const TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                        ),
           

           
                        SizedBox(
                        height: size.height/25,
                        ),


           
                         SizedBox(
                            width: size.width/1.2,
                            height: size.height/18,
                            child: TextField(

                            controller: myController,
                           
                                                         
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                            border: OutlineInputBorder(),

                              ),
                              //controller: _textEditingController,
                            ),
                          ),
                        
           
                        SizedBox(
                        height: size.height/100,
                        ),
           
                        Text("0 / $counter",
                        style: const TextStyle(fontSize: 12),
                        textAlign: TextAlign.right,
                        ),
           
                         SizedBox(
                        height: size.height/30,
                        ),
           
                        SizedBox(
                          height: 35,
                          width: 100,
                          child: ElevatedButton(
                           onPressed: () {
                           checkGuess(context);
                           myController.clear();
                          },
                        
                          child: const Text("Submit",
                          style: TextStyle(fontSize: 16),),
                                       ),
                        ),

                     ],
               ),
             ),
           ),
    );
   
  }
   @override
     void initState(){
    final randomNumber=Random().nextInt(10)+1;
    myNumber=randomNumber;
    super.initState();
   }

   @override
     void dispose(){
    myController.dispose();
    super.dispose();
   }

   void checkGuess(BuildContext context)
   {
                        //increment the counter by one every time user press it
            
                        //get the input from the user and convert it into int=guessNumber                      
             
                          guessNumber=myController.text;
                        
                          //sendData(context);
                        
                        //if myNumber==guessNumber
                    
                        if(myNumber==guessNumber)
                        {
                          setState(() {
                            
                          counter=0;

                          });
                 
                        //go to RightGuessPage
                        //this is a (push replacement) because it should start from home page
                         Navigator.pushReplacement(context,
                         // ignore: prefer_const_constructors
                         MaterialPageRoute(builder: (context) => RightGuessPage(number:myNumber)),
                     
                         );

                       }
                        //if myNumber != guessNumber
                        //go to GuessPage
                        // ignore: unrelated_type_equality_checks
                        if(guessNumber!=myNumber)
                        {
                             setState(() {
                            
                          counter++;

                          });
                            

                         Navigator.push(context,
                         MaterialPageRoute(builder: (context) =>  const WrongGuessPage()),);
                        }      
             
                        if(counter==3){
                          //reset the counter
                          
                               setState(() {
                            
                          counter=0;

                          });
                            
                  
                          //go to game over page
                          //this is a (pushreplacement)
                         Navigator.pushReplacement(context,
                         MaterialPageRoute(builder: (context) =>  GameOverPage(number:myNumber)),
                         );
                        } 
   }
  /* void sendData(BuildContext context)
   {
    int toSend=myNumber;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WrongGuessPage(int: toSend,),
        ));
   }
*/
   
}

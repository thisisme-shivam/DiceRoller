import 'package:flutter/material.dart';
import 'package:untitled3/dicerooler.dart';

class Gradientclass extends StatelessWidget{
   Gradientclass({super.key});


  @override
  Widget build(context){
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 154, 5, 78)
          ],
        ),
      ),
      child :  Center(

          child: DiceRoller()  ),

    );
  }


}
class TextClass extends StatelessWidget{

  const TextClass({super.key});
  @override
  Widget  build(context){
    return const Text('Hi',style: TextStyle(
        color:  Colors.white,
        fontSize: 30
    ));
  }
}



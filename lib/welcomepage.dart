import 'package:flutter/material.dart';

class Welcomepage extends StatelessWidget{
  const Welcomepage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 180, 6),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            Row(
              children: [
                SizedBox(
                  height: 350,
                  width: 350,
                  child: Image(image: AssetImage("assets/images/salad.png"),fit: BoxFit.cover,),
                ),
              ],
            ),
            
            SizedBox(height: 20,),

            Center(child: Text("Fast delivery at\n your doorstep",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),

            SizedBox(height: 20,),

            Center(child: Text("Home delivery and online reservation\n      system for restaurants & cafe",style: TextStyle(fontSize: 16,color: Colors.white),)),

            SizedBox(height: 190,),
            
            SizedBox(
              height: 50,
              width: 360,
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),
              onPressed: (){}, child: Text("Lets Explore",style: TextStyle(fontSize: 25,color: Colors.green),)))
          ],
        ),
      ),
    );
  }
}
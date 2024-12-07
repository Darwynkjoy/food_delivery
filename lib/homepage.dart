import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  const Homepage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color.fromARGB(255, 0, 180, 6),),
                  child: Icon(Icons.menu,color: Colors.white,),
                ),

                SizedBox(width: 85,),

                Icon(Icons.location_pin,color: Color.fromARGB(255, 0, 180, 6),),
                Text("Magura, BD",style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 134, 134, 134),fontWeight: FontWeight.bold),),

                SizedBox(width: 85,),

                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),image: DecorationImage(image: AssetImage("assets/images/hussein.jpg"),fit: BoxFit.cover)),
                ),
              ],
            ),

            SizedBox(height: 10,),

            Text("Hi Rahul",style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 0, 180, 6),fontWeight: FontWeight.bold),),

            SizedBox(height: 10,),

            Text("Find your food",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),

            SizedBox(height: 10,),

            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(255, 188, 255, 190)),
            ),
            ],
        ),
      ),
    );
  }
}
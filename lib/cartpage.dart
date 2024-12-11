import 'package:flutter/material.dart';

class Cartpage extends StatefulWidget{
  @override
  State<Cartpage> createState()=> _CartpageState();
}

class _CartpageState extends State<Cartpage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color.fromARGB(255, 0, 180, 6),),
                  child: Center(child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                  ),
                  
                SizedBox(width: 99,),
                  
                Text("Your Cart",style: TextStyle(fontSize: 24,color: Colors.grey,fontWeight: FontWeight.bold),),
                  
                SizedBox(width: 99,),
                  
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color.fromARGB(255, 0, 180, 6),),
                  child: Icon(Icons.favorite_border,color: Colors.white,),
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Container(
                height: 450,
                width: 400,
                child: 
                ListView.separated(
                  itemBuilder: (context,index){
                    return Container(
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:const Color.fromARGB(255, 238, 238, 238)),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),image: DecorationImage(image: AssetImage("assets/images/avacado.png"),fit: BoxFit.cover)),
                          ),
                          Container(
                            height: 100,
                            width: 180,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Avacado Salad",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                                Row(
                                  children: [
                                    Text("20min",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),

                                    SizedBox(width: 10,),

                                    Icon(Icons.star,color: Colors.amber,size: 20,),
                                    Text("4.5",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Text("\$50.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 180, 6),),),
                              ],
                            ),
                          ),

                          SizedBox(width: 45,),

                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 0, 180, 6),),
                            child: Center(child: Icon(Icons.delete_outline,color: Colors.white,size: 30,))),
                        ],
                      ),
                    );},
                  separatorBuilder: (context,index){
                    return SizedBox(height: 15,);},
                  itemCount: 4),
                ),
                Text("- - - - - - - - - - - - - - - - - - - - - - - -",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 0, 180, 6),),),
                Container(
                  width: 400,
                  height: 120,
                  color: Colors.black,
                  child: Column(),
                ),
                Text("- - - - - - - - - - - - - - - - - - - - - - - -",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 0, 180, 6),),),
          ],
        ),
      ),
    );
  }
}
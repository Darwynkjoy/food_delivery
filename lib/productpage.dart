import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/cartpage.dart';
import 'package:fooddeliveryapp/productpageprovider.dart';
import 'package:fooddeliveryapp/homepage.dart';
import 'package:provider/provider.dart';

class Productpage extends StatefulWidget{
  String? image;
  String? name;
  String? price;
  String? rating;
  String? calorie;
  String? time;
  Productpage({super.key,required this.image,required this.name,required this.price,required this.rating,required this.calorie,required this.time});
  State<Productpage> createState()=> _ProductpageState();
  }
  class _ProductpageState extends State<Productpage>{
  @override
  Widget build(BuildContext context){
    final Counter=Provider.of<Productpageprovider>(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 180, 6),
      body: Stack(
        children:[ Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0,top: 15),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context,MaterialPageRoute(builder: (context)=>Homepage()));
                    },
                    child: Container(padding: EdgeInsets.only(left: 10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: const Color.fromARGB(57, 255, 255, 255)),
                      child: Center(child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                      ),
                  ),
                    
                  SizedBox(width: 85,),
                    
                  Text("Food Details",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                    
                  SizedBox(width: 85,),
                    
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: const Color.fromARGB(57, 255, 255, 255)),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Cartpage(name: widget.name, image: widget.image, price: widget.price, rating: widget.rating, time: widget.time,calorie: widget.calorie,)),);
                      },
                      child: Icon(Icons.shopping_cart_outlined,color:  Colors.white,)),
                    ),
                  ],
                ),
            ),
            Container(
              height: 650,
              width: 480,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
            ),
          ],
        ),
          Positioned(
            top: 90,
            left: 35,
              child: Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage(widget.image!))),
                ),
              ),
          Positioned(
            top: 420,
              child: Container(
                padding: EdgeInsets.all(15),
                height:500,
                width: 415,
                decoration: BoxDecoration(color: Colors.white,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(widget.name!,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 0, 180, 6),),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: (){Counter.decrement();},  child: Text("-",style: TextStyle(fontSize: 25,color: Colors.white),)),
                                  Text("${Counter.count}",style: TextStyle(fontSize: 25,color: Colors.white),),
                                  GestureDetector(
                                    onTap: (){Counter.increment();},  child: Text("+",style: TextStyle(fontSize: 25,color: Colors.white),)),
                                ],
                              )
                                ),
                          ),
                        ],
                      ),
                      Text("\$${widget.price!}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 180, 6),)),
                      
                      SizedBox(height: 20,),

                      Row(
                        children: [
                          Icon(Icons.star,color: Colors.amber,),
                          Text(widget.rating!,style: TextStyle(fontSize: 20,color: Colors.grey),),
                          SizedBox(width: 70,),
                          Icon(Icons.bloodtype,color: Colors.red,),
                          Text(widget.calorie!,style: TextStyle(fontSize: 20,color: Colors.grey),),
                          SizedBox(width: 70,),
                          Icon(Icons.lock_clock,color: Colors.amber,),
                          Text(widget.time!,style: TextStyle(fontSize: 20,color: Colors.grey),)
                        ],
                      ),

                      SizedBox(height: 30,),

                      Text("About Food",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),

                      SizedBox(height: 15,),

                      Text('''kjwqgf lqwkjf kiwj lqwkjef hwjhf wlkfejhg wkj wkejfg loqiuegf bqlwekj bj jgwi jhgaqs jqhsd''',style: TextStyle(fontSize: 18,color: Colors.grey),),
                      Row(
                        children: [
                          Text('''lqw lqkwjhfg kjwqehfg...''',style: TextStyle(fontSize: 18,color: Colors.grey),),
                          TextButton(onPressed: (){}, child: Text("ReadMore",style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 0, 180, 6),),))
                        ],
                      ),

                      SizedBox(height: 80,),

                      Center(
                        child: SizedBox(
                          height: 65,
                          width: 380,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 0, 180, 6),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                            ),
                            onPressed: (){
                            },
                            child: Text("Add to cart",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)),
                        ),
                      )
                    ],
                  )),
            ),
          //)
        ]
      ),
    );
  }
}
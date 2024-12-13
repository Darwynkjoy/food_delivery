import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/productpage.dart';
import 'package:fooddeliveryapp/productpageprovider.dart';
import 'package:provider/provider.dart';

class Cartpage extends StatefulWidget{
  String? image;
  String? name;
  String? price;
  String? rating;
  String? time;
  String? calorie;
  Cartpage({super.key,required this.name,required this.image,required this.price,required this.rating,required this.time,required this.calorie});
  @override
  State<Cartpage> createState()=> _CartpageState();
}

class _CartpageState extends State<Cartpage>{
  @override
  Widget build(BuildContext context){
    final counter=Provider.of<Productpageprovider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context,MaterialPageRoute(builder: (context)=>Productpage(image: widget.image, name: widget.name, price: widget.price, rating: widget.rating,calorie: widget.calorie, time: widget.time)));
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color.fromARGB(255, 0, 180, 6),),
                    child: Center(child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                    ),
                ),
                  
                SizedBox(width: 99,),
                  
                Text("Your Cart",style: TextStyle(fontSize: 24,color: Colors.grey,fontWeight: FontWeight.bold),),
                ],
              ),

              SizedBox(height: 20,),

              Container(
                height: 490,
                width: 400,
                child: 
                ListView.separated(
                  itemBuilder: (context,index){
                    return Container(
                      height: 110,
                      width: 400,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:const Color.fromARGB(255, 238, 238, 238)),
                      child: Row(
                        children: [
                          Container(
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),image: DecorationImage(image: AssetImage("${widget.image}"),fit: BoxFit.cover)),
                          ),
                          Container(
                            height: 100,
                            width: 180,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${widget.name}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                                Row(
                                  children: [
                                    Text("${widget.time}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),

                                    SizedBox(width: 10,),

                                    Icon(Icons.star,color: Colors.amber,size: 20,),
                                    Text("${widget.rating}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Text("\$${widget.price}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 180, 6),),),
                              ],
                            ),
                          ),

                          SizedBox(width: 15,),

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
                  itemCount: counter.count),
                ),
                Text("- - - - - - - - - - - - - - - - - - - - - - - -",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 0, 180, 6),),),
                Container(
                  width: 400,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Purchace Amount",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
                          Text("\$200.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery Charges",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
                          Text("\$49.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Taxes",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
                          Text("\$13.78",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
                        ],
                      ),
                      ],
                  ),
                ),
                Text("- - - - - - - - - - - - - - - - - - - - - - - -",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 0, 180, 6),),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Amount",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 180, 6),),),
                    Text("\$13.78",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 180, 6),)),
                      ],
                ),

                SizedBox(height: 30,),

                SizedBox(
                  height: 60,
                  width: 400,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 0, 180, 6),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    ),
                  onPressed: (){},
                  child: Text("Checkout",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
                )
          ],
        ),
      ),
    );
  }
}
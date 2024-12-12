import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/productpage.dart';
import 'package:fooddeliveryapp/welcomepage.dart';

class Homepage extends StatefulWidget{
  Homepage({super.key});
  @override
  State<Homepage> createState()=> _HomepageState();
}

class _HomepageState extends State<Homepage>{
  @override
  Widget build(BuildContext context){
    List<Map> Data=[
      {
        "type":"Food",
        "image":"assets/images/avacado.png",
        "name":"Avacado Salad",
        "price":"\$50.00",
        "time":"20min",
        "rating":"4.0",
        "calorie":"270Kcal"
        
      },
      {
        "type":"Fruits",
        "image":"assets/images/salad.png",
        "name":"Ceaser Salad",
        "price":"\$56.50",
        "time":"13min",
        "rating":"4.4",
        "calorie":"470Kcal"
      },
      {
        "type":"Vegetables",
        "image":"assets/images/double burger.png",
        "name":"Burger",
        "price":"\$51.00",
        "time":"24min",
        "rating":"3.9",
        "calorie":"440Kcal"
      },
      {
        "type":"Grocery",
        "image":"assets/images/fruitssalad.png",
        "name":"Fruits Salad ",
        "price":"\$45.00",
        "time":"15min",
        "rating":"4.8",
        "calorie":"300Kcal"
      }
    ];
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

                GestureDetector(
                  onTap:(){
                    Navigator.pop(context,MaterialPageRoute(builder: (context)=>Welcomepage()));
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),image: DecorationImage(image: AssetImage("assets/images/hussein.jpg"),fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),

            SizedBox(height: 10,),

            Text("Hi Rahul",style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 0, 180, 6),fontWeight: FontWeight.bold),),

            SizedBox(height: 10,),

            Text("Find your food",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),

            SizedBox(height: 10,),

            Container(
              padding: EdgeInsets.all(10),
              height: 60,
              width: 400,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromARGB(255, 226, 252, 213)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search,color: Color.fromARGB(255, 0, 180, 6),size: 35,),
                  Text("Search Food             ",style: TextStyle(fontSize: 25,color: Colors.grey,),),
                  SizedBox(width: 30,),
                  Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color.fromARGB(255, 0, 180, 6),),
                  child: Icon(Icons.equalizer,color: Colors.white,),
                ),
                  
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 30,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                return Container(
                  height: 20,
                  child: Text(Data[index]["type"],style: TextStyle(fontSize: 23,color: Colors.grey,fontWeight: FontWeight.bold),),
                );
              },
              separatorBuilder: (context,index){
                return SizedBox(width: 20,);
              },
              itemCount: 4),
            ),
            SizedBox(height: 30,),
            Expanded(
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 20,childAspectRatio: 0.66),itemCount: 4,
              itemBuilder: (context,index){
                return Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(203, 244, 244, 244)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 8.0,right: 8),
                         child: Row(mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             Icon(Icons.favorite,color: Colors.red,),
                           ],
                         ),
                       ),
                      Center(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Productpage(
                              image:Data[index]["image"],
                              name: Data[index]["name"],
                              price: Data[index]["price"],
                              rating: Data[index]["rating"],
                              calorie: Data[index]["calorie"],
                              time: Data[index]["time"],
                            )));
                          },
                          child: Container(
                            height: 120,
                            width: 120,
                            child: Image(image: AssetImage(Data[index]["image"]))),
                        ),
                      ),
                        Center(child: Text(Data[index]["name"],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),

                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 15),
                        child: Row(
                          children: [
                            Text(Data[index]["time"],style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold),),
                            
                            SizedBox(width: 50,),
                        
                            Icon(Icons.star,color: Colors.amber,),
                            Text(Data[index]["rating"],style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(Data[index]["price"],style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                        
                            Column(
                              children: [
                                SizedBox(height: 20,),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color.fromARGB(255, 0, 180, 6),),
                                  child: Center(child: Text("+",style:TextStyle(fontSize: 35,color: Colors.white,))),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                );
              }),
            ),
            ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color.fromARGB(255, 0, 180, 6),
        unselectedIconTheme: IconThemeData(color: Colors.black),
        items: [
          BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.home,size: 30,)),label: ""),
          BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.sms,size: 30,)),label: ""),
          BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,size: 30,)),label: ""),
          BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.notifications,size: 30,)),label: ""),
          BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.favorite,size: 30,)),label: ""),
        ]),
    );
  }
}
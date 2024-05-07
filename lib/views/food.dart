import 'package:flutter/material.dart';
import '';

class food extends StatefulWidget {
  const food({super.key});

  @override
  State<food> createState() => _foodState();
}

class _foodState extends State<food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8E8E8),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(40),
              child: (
              Column( children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Icon(Icons.arrow_back_ios, color: Colors.black, size: 30,),
                  Text("Detailes", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Color(0xff22B259),
                      borderRadius: BorderRadius.circular(5)
                    ),
                      child: Icon(Icons.shopping_cart, size: 20, color: Colors.white,)
                  ),
                ],),
                SizedBox(height: 20,),
                Container(
                  height: 110,
                  width: 220,
                  decoration: BoxDecoration(
                    color: Color(0xffF6F6F6),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                      bottomLeft: Radius.circular(7)
                    )
                  ),

                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 17),
                    child: Column(
                      children: [
                      Text("Total Price", style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff8A8A8A),
                        fontWeight: FontWeight.bold,
                      ),),
                      Text("\$15.00", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        fontFamily: 'Arial Black',
                      ),),
                    ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 320,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(150),
                    image: DecorationImage(
                      image: AssetImage("assets/images/food.png"),
                      fit: BoxFit.cover
                    )
                  ),
                ),

              ],)
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.alarm, size: 15,),
                  Text("30 Mins", style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold
                  ),)
                ],),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Chicken Slice", style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),),
                      Column(children: [

                        Row(children: [
                          Icon(Icons.star, color: Color(0xffDA6847),size: 20,),
                          Text("4.9 (85 Review)", style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20
                          ),)
                        ],)
                      ],)

                ],),
            ),
            Text("Chicken Slice is prepared with the freshet and local \nsourced ingredients. Only real chicken  and top  spices are \nused to create  enriched, unique , highly",
              style: TextStyle(
                color: Colors.black26,
                fontSize: 15,
              ),),
            SizedBox(height: 40,),
            Container(
              height: 60,
              width: 170,
              decoration: BoxDecoration(
                color: Color(0xff22B75B),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: (
                Text("Add to card", style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),)
                ),
              ),
            )
          ],
        ),

      ),

    );
  }
}

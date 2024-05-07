import 'package:flutter/material.dart';
import 'package:test01/views/cart.dart';
import 'package:test01/views/food.dart';
import 'package:test01/views/habit.dart';

class music extends StatefulWidget {
  const music({super.key});


  @override
  State<music> createState() => _musicState();
}

class _musicState extends State<music> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E2035),
      bottomNavigationBar: Container(
        height: 75,
        decoration: BoxDecoration(
          color: Color(0xff212348),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          selectedItemColor: Color(0xffBC668E),
          unselectedItemColor: Color(0xff4E516B),
          items: [
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => habit()),
                  );
                },
                child: Icon(Icons.headphones),
              ),
              label: "Music",
            ),
            BottomNavigationBarItem(
            icon: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> cart()),
                );
              },
            child: Icon(Icons.heart_broken),
              ),
          label: "Saved",
          ),
            BottomNavigationBarItem(icon: InkWell(
                onTap:(){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> food()),
                  );
                },
                child:Icon(Icons.radar)), label: "PodCast"),
          ],iconSize: 25,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SafeArea(
            child: Column(
              children: [Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text("MusicBox", style: TextStyle(
                      color: Color(0xffD1D0DE),
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),),
                  Icon(Icons.search,size: 40,color: Color(0xffD1D0DE),),
                ],
              ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top Favoris", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),),
                    Text("Hits", style: TextStyle(
                      color: Color(0xff815B78),
                      fontSize: 18
                    ),),
                  ],
                ),
                SizedBox(height: 12,),
                Row(children: [
                  Container(
                    height: 240,
                    width: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage("assets/images/2.jpg"),
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(children: [
                    Container(
                      height: 110,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage("assets/images/3.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 110,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage("assets/images/4.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],)
                ],
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Play list", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 22,
                    ),),
                    Text("All", style: TextStyle(
                        color: Color(0xff815B78),
                        fontSize: 23
                    ),),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff2B2D42),
                          ),

                          child: ListTile(title: Text("Sharad Dormund Loyalti", style: TextStyle(
                            color: Colors.white
                          ),
                          ),
                            leading: Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/4.jpg"),
                                )
                              ),
                            ),
                            subtitle: Text("Music de transition de chaine sur uen bande  !!!"),
                            trailing: Column(
                              children: [
                                Text("3:08"),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),

              ),
            ]),
          ),
        ),
        );
  }
}

import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Test App", style: TextStyle(color: Colors.white),),
        leading: Icon(Icons.arrow_back_ios, color: Colors.white, size: 20,),
        actions: [
          Icon(Icons.video_call, color: Colors.white, size: 20,),
          SizedBox(width: 20,),
          Icon(Icons.call, color: Colors.white, size: 20,),
          SizedBox(width: 20,),
          Icon(Icons.shopping_cart, color: Colors.white, size: 20,),
          SizedBox(width: 20,),
        ],
      ),
      backgroundColor: Colors.white70,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Container(
          width: 360,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
          child: (
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  child:
                  Image.asset("assets/images/homeimage.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Text("M. Blondeau", style: TextStyle(fontSize: 20),),
                    Text("DevOps", style: TextStyle(fontSize: 10),),
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        Text("Yaoundé")
                      ],
                    )
                  ],
                ),
              )
            ],
          )
          ),
        ),
      ),
    );
  }
}

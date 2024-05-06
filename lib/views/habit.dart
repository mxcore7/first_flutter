import 'package:flutter/material.dart';

class habit extends StatefulWidget {
  const habit({super.key});

  @override
  State<habit> createState() => _habitState();
}

class _habitState extends State<habit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: (
          Column(
            children: [
              Container(
                height: 450,
                width: 550,
                decoration: BoxDecoration(
                color: Color(0xffFF958D),
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(image: AssetImage("assets/images/chemise.png"), fit: BoxFit.cover),
              ),

                child: Container(
                  width: 10,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                    child: (
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween
                      ,children: [
                        Container(
                          height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                                color: Colors.white
                            )
                            ,child: Icon(Icons.circle_notifications_outlined,color: Color(0xffFF958D),
                        size: 15,)
                        ),
                      Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white
                          )
                          ,child: Icon(Icons.heart_broken_outlined,color: Color(0xffFF958D),
                        size: 15,)
                      ),
                      ],
                    )
                    ),
                  ),
                )
              ),
              SizedBox(height: 30,),
              Container(
                child: (
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Trendy TOP", style: TextStyle(
                        color: Colors.black,
                        fontSize: 40, fontWeight: FontWeight.bold),),
                    Text("250\$", style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,fontWeight: FontWeight.bold),)
                  ],
                )
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Dagadu Jacket", style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                  ),)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("White top with soft material. not hot confortable \n caying. available in various size. sutable for use \n at parties", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                  ),)
                ],
              ),
              SizedBox(height: 120,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 55,
                    width: 160
                    ,decoration: BoxDecoration(
                      color: Color(0xffFF958D),
                    borderRadius: BorderRadius.circular(15)
                    )
                    ,child: Center(
                      child: (
                      Text("Buy now", style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),)
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70
                    ,decoration: BoxDecoration(
                      color: Color(0xffEBEBEB),
                      borderRadius: BorderRadius.circular(50)
                  )
                    ,child: Center(
                    child: (
                        Icon(Icons.shopping_cart, color: Color(0xffFA958F),size: 40,)
                    ),
                  ),
                  )
                ],
              )
            ],
          )
          ),
        ),
      ),

    );
  }
}

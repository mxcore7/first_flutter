import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBEEF3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 35
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 65,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text("Skip", style: TextStyle(letterSpacing: 2),),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70,),
              Container(
                child: (
                Image.asset("assets/images/homeview-removebg-preview.png")
                ),
              ),
        SizedBox(height:30),
              Expanded(
                child: Container(
                  height: double.infinity,
                    width: double.infinity,
                    decoration: (
                    BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(45),
                        topLeft: Radius.circular(45),
                      )

                    )
                    ),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Text("Easy Appointment Booking", style: TextStyle(
                        fontSize: 25,
                      ),),
                      SizedBox(height: 20,),
                      Text("Say no to hospital wait time schelude your \n appointment directly with our doctor", style: TextStyle(
                        color: Color(0xff92969B)
                      ) ,),
                      SizedBox(height: 60,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 180),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Color(0xff92969B),
                                borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Color(0xff29A43B),
                                borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Color(0xff92969B),
                                borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 100,),
                      Container(
                        width: 280,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff2B7FFC),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Center(
                          child: Text("Next", style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ),
                    ],
                  ),
                  ),
              ),
        ],
          ),
        ),
      ),
    );
  }
}

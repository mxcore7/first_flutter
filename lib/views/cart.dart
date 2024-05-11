import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class cart extends StatefulWidget {
  const cart({Key? key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black87),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 230,
                width: 390,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Find Your",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "Inspiration",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 60,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(244, 243, 243, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search, color: Colors.green, size: 40),
                            hintText: "Search you're looking for...",
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      "Promo Today",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 230,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              PromoCard(image: "assets/images/chemise.png"),
                              PromoCard(image: "assets/images/chemise.png"),
                              PromoCard(image: "assets/images/2.jpg"),
                              PromoCard(image: "assets/images/2.jpg"),
                              PromoCard(image: "assets/images/4.jpg"),
                              PromoCard(image: "assets/images/3.jpg"),
                              PromoCard(image: "assets/images/3.jpg"),
                              PromoCard(image: "assets/images/3.jpg"),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 150,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child:PromoCard(image: "assets/images/3.jpg",),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PromoCard extends StatelessWidget {
  final String image;

  const PromoCard({required this.image});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              stops: [0, 1],
              colors: [
                Colors.black.withOpacity(0),
                Colors.black.withOpacity(0.9),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

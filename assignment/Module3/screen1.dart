import "package:flutter/material.dart";
import "package:module_2_3/Module3/comp/comp1.dart";
import "package:module_2_3/Module3/comp/comp2.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";

class Module2 extends StatefulWidget {
  const Module2({super.key});

  @override
  State<Module2> createState() => _Module2State();
}

class _Module2State extends State<Module2> {
  TextEditingController ok = TextEditingController();
  PageController ok2 = PageController();
  List pages = [
    Comp2(
        image: "Assets/r.jpg",
        name: "Soba Soup",
        desc: "No1 in place",
        price: "Rs12",
        color: Colors.yellow),
    Comp2(
        image: "Assets/r.jpg",
        name: "Soba Soup",
        desc: "No1 in place",
        price: "Rs12",
        color: Colors.yellow)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
        ),
        backgroundColor: Colors.yellow.shade800,
      ),
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey.shade200,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ],
          )),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "Restuarant",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade500,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "20-30 min",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "2.4Km",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Restaurant",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 15, bottom: 25),
                child: Image.asset(
                  "Assets/r.jpg",
                  width: 100,
                  height: 100,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Orange Sandwich is delicious",
                  style: TextStyle(color: Colors.grey.shade900, fontSize: 16),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star_border,
                    color: Colors.orange,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 35),
                    child: Text(
                      "4.7",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Comp1(
                text: "Recommend",
                color: Colors.orange,
                color2: Colors.white,
              ),
              Comp1(text: "Popular", color: Colors.white, color2: Colors.black),
              Comp1(text: "Noodles", color: Colors.white, color2: Colors.black),
              Comp1(text: "Pizza", color: Colors.white, color2: Colors.black)
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Comp2(
            image: "Assets/pizza.jpg",
            name: "Pizza",
            desc: "No1 in sales",
            price: "₹2000",
            color: Colors.yellow.shade700,
          ),
          Comp2(
            image: "Assets/pasta.jpg",
            name: "Pasta",
            desc: "No1 in sales",
            price: "₹2000",
            color: Colors.grey.shade400,
          ),
          Comp2(
            image: "Assets/tacos2.jpg",
            name: "Tacos",
            desc: "No1 in sales",
            price: "₹2100",
            color: Colors.grey.shade300,
          ),

          SizedBox(height: 40,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: SmoothPageIndicator(controller: ok2, count: 3,effect: ExpandingDotsEffect(
                  dotHeight: 8,dotWidth: 10
                ),),
              ),
            ],
          )
          
        ],
          )
        
      )
    );
  }
}
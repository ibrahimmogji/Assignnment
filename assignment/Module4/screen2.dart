import "package:flutter/material.dart";
import "package:module_2_3/Module3/comp/comp1.dart";
import "package:module_2_3/Module4/comp/comp1.dart";
import "package:module_2_3/Module4/comp/comp4.dart";

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: "Dining"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Cart")
      ]),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Menu",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.sort),
                  SizedBox(
                    width: 20,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Comp3(text: "Kinza", color: Colors.grey.shade300),
              Comp3(text: "Maman", color: Colors.yellow.shade700),
              Comp3(text: "Taruki", color: Colors.grey.shade300),
              Comp3(text: "Gastrol", color: Colors.grey.shade300)
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "All",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Salad",
                style: TextStyle(color: Colors.grey.shade500),
              ),
              Text(
                "Pizza",
                style: TextStyle(color: Colors.grey.shade500),
              ),
              Text(
                "Asian",
                style: TextStyle(color: Colors.grey.shade500),
              ),
              Text(
                "Burger",
                style: TextStyle(color: Colors.grey.shade500),
              ),
              Text(
                "Desert",
                style: TextStyle(color: Colors.grey.shade500),
              )
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Comp4(
                  title: "Pizza",
                  image: "Assets/pizza.jpg",
                  price: "Rs200",
                  rating: "4.5"),
              Comp4(
                  title: "Pasta",
                  image: "Assets/pasta.jpg",
                  price: "Rs260",
                  rating: "4.1")
            ],
          ),
           SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Comp4(
                  title: "Tacos",
                  image: "Assets/tacos2.jpg",
                  price: "Rs800",
                  rating: "4.1"),
              Comp4(
                  title: "Pizza",
                  image: "Assets/pizza.jpg",
                  price: "Rs200",
                  rating: "4.5")
            ],
          )
        ],
      )),
    );
  }
}

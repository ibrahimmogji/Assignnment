import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Cart",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "thu,6 of june,2023",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "+ Add To Order",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 450,
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        mycontainer('chiken Burger', '7.00'),
                        mycontainer('Avocado salad', '7.00'),
                        mycontainer('vegetable soup', '7.00'),
                        mycontainer('Avocado salad', '7.00'),
                      ],
                    );
                  })),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Total",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "48.0",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 300,
                  child: Center(
                      child: Text(
                    "Checkout",
                    style: TextStyle(fontSize: 40),
                  )),
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(100)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget mycontainer(String title, String amount) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(30)),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20)),
                ),
              )
            ],
          ),
          SizedBox(
            width: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    '- 3 +',
                    style: TextStyle(fontSize: 30),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            width: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("\$$amount", style: TextStyle(fontSize: 20)),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              )
            ],
          )
        ]),
      ),
    );
  }
}

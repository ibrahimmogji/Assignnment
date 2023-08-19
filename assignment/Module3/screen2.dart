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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Stack(
        children: [
          Positioned(
            top: 150,
            child: Container(
              height: 700,
              width: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Text(
                        "Sei us Saman Phrai",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer_sharp,
                              color: Colors.blue,
                            ),
                            Text('50 min')
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text('4.5')
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.fireplace_outlined,
                              color: Colors.red,
                            ),
                            Text('325 cal')
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 25.6,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FittedBox(
                                child: Text('\$12',
                                    style: TextStyle(fontSize: 40))),
                            Padding(
                              padding: const EdgeInsets.only(left: 26.0),
                              child: Container(
                                height: 70,
                                width: 180,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      '-',
                                      style: TextStyle(fontSize: 50),
                                    ),
                                    Text('1', style: TextStyle(fontSize: 30)),
                                    Text('+', style: TextStyle(fontSize: 40))
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "ingredients",
                            style: TextStyle(fontSize: 30),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 140,
                      child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                height: 140,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                              ),
                            );
                          }),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "About",
                            style: TextStyle(fontSize: 30),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like"),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
            ),
          ),
          Positioned(
            height: 250,
            left: 150,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 100,
              child: ClipOval(
                child: Image.network(
                  'data:image/jpeg;base64,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',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          hoverColor: Colors.amber,
          onPressed: () {},
          label: Row(
            children: [
              Icon(Icons.shopping_bag),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: Text(
                  "1",
                  style: TextStyle(fontSize: 10),
                ),
              )
            ],
          )),
    );
  }
}

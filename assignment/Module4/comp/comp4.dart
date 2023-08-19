import "package:flutter/material.dart";

class Comp4 extends StatelessWidget {
  String image;
  String title;
  String rating;
  String price;

  Comp4({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              SizedBox(width: 6),
              Text("($rating)"),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(price),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.yellow.shade700,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Icon(Icons.add,color: Colors.white,),
              )
            ],
          ),
        ],
      ),
    );
  }
}

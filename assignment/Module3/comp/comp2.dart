import "package:flutter/material.dart";

class Comp2 extends StatelessWidget {
  String image;
  String name;
  String desc;
  String price;
  Color color;
  Comp2(
      {super.key,
      required this.image,
      required this.name,
      required this.desc,
      required this.price,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14)
      ),
      child: Row(
        children: [
          Row(
            children: [
              Image.asset(image,height: 80,width: 70,),
            ],
          ),
          SizedBox(width: 30,),
          Row(
            
            children: [
              Column(
                children: [
                  Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  Text(desc,style: TextStyle(color: color),),
                  SizedBox(height: 10,),
                  Text(price,style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),
          SizedBox(width: 150,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Icon(Icons.arrow_forward_ios),
              )
            ],
          )
        ],
      ),
      
    );
  }
}

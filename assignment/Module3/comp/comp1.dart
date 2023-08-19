import "package:flutter/material.dart";
class Comp1 extends StatelessWidget {
  String text;
  Color color;
  Color color2;
   Comp1({super.key,required this.text,required this.color,required this.color2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: color
      ),
      child: Text(text,textAlign: TextAlign.center,style: TextStyle(
        color: color2,fontWeight: FontWeight.bold
      ),),
    );
  }
}
import "package:banking_home/utils/colors.dart";
import "package:flutter/material.dart"; 


Text buildAmount(double amount){
  if(amount < 0){
    return Text("$amount", style: const TextStyle(fontFamily: "Ubuntu", fontSize: 19, color: Colors.red));
  }
  else{
    return Text("$amount", style: const TextStyle(fontFamily: "Ubuntu", fontSize: 19, color: Colors.green));
  }
}

Widget buildListElement(BuildContext context, String title, String descr, double amount, String iconpath){
  return Container(
    height: 50,
    decoration: const BoxDecoration(
      color: gradientColor1, 
      borderRadius: BorderRadius.all(Radius.circular(20)), 
      boxShadow: [
        BoxShadow(
          offset: Offset(0, 2),
          color: gradientColor2,
          blurRadius: 0.6)
      ]
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
          child: Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: gradientColor2
            ),
            child: Image.asset(iconpath, width: 28, height: 28)
          )
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Text(title, style: const TextStyle(color: textcolor, fontFamily: "Ubuntu", fontSize: 19, fontWeight: FontWeight.bold)), 
              Text(descr, style: const TextStyle(color: textcolor, fontFamily: "Ubuntu", fontSize: 15)), 
            ],
          ),
        ), 
        Padding(
          padding: const EdgeInsets.only(right: 20), 
          child: buildAmount(amount)
        )
      ],
    )
  );
}
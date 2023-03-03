import "package:flutter/material.dart";
import "package:banking_home/utils/colors.dart";

Widget buildCard(BuildContext context,  String balance, String name, String number){
  return Container(
    height: 200,
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight, 
        colors: <Color>[
          Color(0xff08203e), 
          Color(0xff557c93)
        ] 
      ),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10), 
              child: Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top:10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text("Current Balance", style: TextStyle(fontFamily: "Ubuntu", fontSize: 15, color: gradientColor1),), 
                      Text("\$$balance", style: const TextStyle(fontFamily: "Ubuntu", fontSize: 19, fontWeight: FontWeight.bold, color: gradientColor1))
                    ],
                  )
                )
              )
            ), 
            const Padding(
              padding: EdgeInsets.only(right: 30, top: 10), 
              child: Text("BankX", style: TextStyle(fontFamily: "Ubuntu", fontSize: 15, fontWeight: FontWeight.bold, color: gradientColor1))
            )
          ]
        ),
        Row(
          
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 25), 
              child: Text("* * * *  * * * *  * * * *  $number", style: const TextStyle(fontFamily: "Ubuntu", fontSize: 19, fontWeight: FontWeight.bold, color: gradientColor1))
            )
          ],
        ), 
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:20, top: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Card Holder", style: TextStyle(fontFamily: "Ubuntu", fontSize: 15, color: gradientColor1)), 
                  Text(name, style: const TextStyle(fontFamily: "Ubuntu", fontSize: 19, fontWeight: FontWeight.bold, color: gradientColor1),)
                ],
              )
            ), 
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 35), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[ 
                  Text("Expires", style: TextStyle(fontFamily: "Ubuntu", fontSize: 15, color: gradientColor1),),
                  Text("05/25", style: TextStyle(fontFamily: "Ubuntu", fontSize: 19, fontWeight: FontWeight.bold, color: gradientColor1),)
                ],
              )
            ), 
            Padding(
              padding: const EdgeInsets.only(right: 25, left:30, top: 35), 
              child: Image.asset("assets/icons/mastercard.png", width: 65, height: 35)
            )
          ]
        ) 
      ],
    ), 
  );
}
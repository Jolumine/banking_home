import "package:banking_home/utils/colors.dart";
import "package:flutter/material.dart";


Widget menubar(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[ 
      InkWell(
        onTap: (){},
        child: const Icon(Icons.menu,size: 25, color: textcolor)
      ),
      const Text("My Cards", 
      style: TextStyle(
        fontSize: 25, 
        color: textcolor,
        fontFamily: "Ubuntu", 
        fontWeight: FontWeight.bold
        )
      ), 
      InkWell(
        onTap: (){},
        child: const Icon(Icons.add_circle_outline_rounded, size: 25, color: textcolor)
      ) 
    ]
  );
}
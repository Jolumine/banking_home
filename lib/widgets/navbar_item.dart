import "package:banking_home/utils/colors.dart";
import "package:flutter/material.dart"; 

BottomNavigationBarItem buildItem(BuildContext context, IconData data, String label){
  return BottomNavigationBarItem(
    icon: Icon(data, size: 25, color: gradientColor2), 
    activeIcon: Icon(data, size: 30, color: textcolor),
    label: label
  );
}
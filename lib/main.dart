import "package:banking_home/screens/home.dart";
import "package:flutter/material.dart";


void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Banking App", 
      home: HomeScreen()
    );
  }
}

import "package:flutter/material.dart";
import "package:banking_home/utils/colors.dart";

import "package:banking_home/widgets/menu_bar.dart";
import "package:banking_home/widgets/card.dart";
import "package:banking_home/widgets/list_element.dart";
import "package:banking_home/widgets/Navbar_Item.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 1; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: false,
        body: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Stack(
              children: <Widget>[
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter, 
                      end: Alignment.bottomCenter, 
                      colors: <Color>[
                        gradientColor1, 
                        gradientColor2
                      ]
                    )
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                          child: menubar(context)
                        ), 
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10), 
                          child: buildCard(context, "12.432.32", "Leonard Becker", "1505")
                        ), 

                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 30, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              Text("Transactions", style: TextStyle(fontFamily: "Ubuntu", fontSize: 19, color: textcolor, fontWeight: FontWeight.bold)),
                              Icon(Icons.tune, size: 25, color: textcolor)
                            ]
                          )
                        ), 
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 5), 
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Text("Today", style: TextStyle(fontFamily: "Ubuntu", fontSize: 17, color: textcolor),)
                            ],
                          )
                        ),
                        ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 10, left: 10, bottom: 13),
                              child: buildListElement(context, "Apple", "MacBook Pro 15'", -2000, "assets/icons/apple.png")
                            ), 
                            Padding(
                              padding: const EdgeInsets.only(right: 10, left: 10, bottom: 13),
                              child: buildListElement(context, "Starbucks", "Chai Latte", -9.99, "assets/icons/starbucks.png")
                            ), 
                            Padding(
                              padding: const EdgeInsets.only(right: 10, left: 10),
                              child: buildListElement(context, "PayPal", "Payment", 149.99, "assets/icons/paypal.png")
                            )
                          ],
                        ), 
                        Padding(
                          padding: const EdgeInsets.only(left: 15), 
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[
                              Text("Yesterday", style: TextStyle(fontFamily: "Ubuntu", fontSize: 17, color: textcolor),)
                            ],
                          )
                        ), 
                        ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 10, left: 10, bottom: 13),
                              child: buildListElement(context, "Apple", "AirPods Pro", -279, "assets/icons/apple.png")
                            ), 
                            Padding(
                              padding: const EdgeInsets.only(right: 10, left: 10, bottom: 13),
                              child: buildListElement(context, "PayPal", "Friend", 12.99, "assets/icons/paypal.png")
                            )
                          ],
                        ),  
                      ],
                    )
                  )
                ), 
              ],
            )
          ), 
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: const TextStyle(fontFamily: "Ubuntu", fontSize: 15, color: textcolor),
            unselectedLabelStyle: const TextStyle(fontFamily: "Ubuntu", fontSize: 15, color: gradientColor1),
            items: <BottomNavigationBarItem>[
              buildItem(context, Icons.compare_arrows_rounded, "Transactions"),
              buildItem(context, Icons.home_outlined, "Home"),   
              buildItem(context, Icons.settings, "Settings")
            ], 
            currentIndex: index,
            backgroundColor: gradientColor1,
            onTap: (index){
              setState(() {
                index = index;
              }
            );
          },
        ),
      );
  }
}

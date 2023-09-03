import 'package:flutter/material.dart';

import 'All.dart';
import 'First_Screen.dart';

class BottomSheets extends StatefulWidget {
  const BottomSheets({super.key});

  @override
  State<BottomSheets> createState() => _BottomSheetsState();
}

class _BottomSheetsState extends State<BottomSheets> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(currentIndex: currentIndex,onTap: (value) {
        setState(() {
          currentIndex=value;
        });
      },items: [
        BottomNavigationBarItem(icon: IconButton(onPressed: (){},icon: InkWell(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => All(),));
        },child: Icon(Icons.home,color: Colors.black,)),),label: "home"),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){},icon: Icon(Icons.search),color: Colors.black,),label: "search"),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){},icon: Icon(Icons.shopping_cart),color: Colors.black,),label: "Cart"),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){},icon: Icon(Icons.notifications),color: Colors.black,),label: "Notify"),
         BottomNavigationBarItem(icon: IconButton(onPressed: (){},icon: Icon(Icons.account_circle_outlined),color: Colors.black,),label: "Account"),
      ],type: BottomNavigationBarType.fixed,);
  }
}
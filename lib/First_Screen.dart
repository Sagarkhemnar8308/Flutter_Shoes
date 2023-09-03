import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes/All.dart';
import 'package:shoes/Black_screen.dart';
import 'package:shoes/Blue_screen.dart';
import 'package:shoes/BottomSheet.dart';
import 'package:shoes/Green_screen.dart';
import 'package:shoes/Grey_screen.dart';
import 'package:shoes/Option.dart';
import 'package:shoes/Orange_Sec_screen.dart';
import 'package:shoes/Orange_screen.dart';
import 'package:shoes/Red_Sec_screen.dart';
import 'package:shoes/Red_screen.dart';

class First_Screen extends StatefulWidget {
  const First_Screen({super.key});

  @override
  State<First_Screen> createState() => _First_ScreenState();
}

String count = "12";
bool colo = true;
bool border1 = true;
bool border2 = true;
bool border3 = true;
bool border4 = true;
bool border5 = true;
int currentIndex=0;

class _First_ScreenState extends State<First_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 90,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.center,
              child: Text(
                "Shoes",
                style: GoogleFonts.rajdhani(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
        ),
        actions: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Icon(
                  Icons.notifications_active_outlined,
                  color: Colors.black,
                ),
              ),
              Positioned(
                  bottom: 25,
                  left: 25,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      child: FittedBox(
                          child: Text(
                        "$count ",
                        style: TextStyle(),
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomSheets(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Option(),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Red_Sec_screen(),
                      ));
                },
                child: Red_screen()),
            SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Orange_Sec_screen(),
                      ));
                },
                child: Orange_screen()),
            SizedBox(
              height: 10,
            ),
            Grey_screen(),
            SizedBox(
              height: 10,
            ),
            Green_screen(),
            SizedBox(
              height: 10,
            ),
            Blue_screen(),
            SizedBox(
              height: 10,
            ),
            Black_screen(),
          ],
        ),
      ),
    );
  }
}

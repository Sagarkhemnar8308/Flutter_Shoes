import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Blue_screen extends StatefulWidget {
  const Blue_screen({super.key});

  @override
  State<Blue_screen> createState() => _Blue_screenState();
}
bool colo=true;
class _Blue_screenState extends State<Blue_screen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("asset/sagar.jpg"), fit: BoxFit.cover)),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Snekers",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: IconButton(
                                  icon: Icon(colo?Icons.favorite_border_rounded:Icons.favorite_outlined,
                                      color: colo ? Colors.black : Colors.red),
                                  onPressed: () {
                                    setState(() {
                                      colo = !colo;
                                    });
                                  },
                                ),
                              ),
                            )),
                      ],
                    ),
                    Text(
                      "Nike",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 140,
                    ),
                    Text(
                      "100\$",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ))));
  
  }
}
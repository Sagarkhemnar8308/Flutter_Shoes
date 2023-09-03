import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Orange_Sec_screen extends StatefulWidget {
  const Orange_Sec_screen({super.key});

  @override
  State<Orange_Sec_screen> createState() => _Orange_Sec_screenState();
}
bool colo=true;
bool border=true;
class _Orange_Sec_screenState extends State<Orange_Sec_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/orange.jpg"), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: Icon(
                              colo
                                  ? Icons.favorite_border_rounded
                                  : Icons.favorite_outlined,
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
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sneakers",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                Text("Size",
                    style:
                        GoogleFonts.poppins(color: Colors.black, fontSize: 20)),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "6",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "7",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "8",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "9",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "10",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "11",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(12) )),
                        onPressed: () {
                        //  Navigator.push(context, MaterialPageRoute(builder: (context) => ,));
                        },
                        child: Text("Buy now",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ))))
              ],
            ),
          )
        ],
      ),
    ));

  }
}
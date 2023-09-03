import 'package:flutter/material.dart';

import 'All.dart';

class Option extends StatefulWidget {
  const Option({super.key});

  @override
  State<Option> createState() => _OptionState();
}
bool colo = true;
bool border1 = true;
bool border2 = true;
bool border3 = true;
bool border4 = true;
bool border5 = true;
class _OptionState extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 12,
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => All(),));
                    setState(() {
                      border1 = !border1;
                      if(true){
                        border2=true;
                        border3=true;
                        border4=true;
                      }
                    });
                  },
                  child: border1
                      ? Text(
                          "All",
                          style: TextStyle(color: Colors.black),
                        )
                      : Icon(Icons.check, color:border1? Colors.green:Colors.white),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: border1?Colors.white:Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(20))),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      border2 = !border2;
                    });
                  },
                  child: border2
                      ? Text("Sneakers", style: TextStyle(color: Colors.black))
                      : Icon(Icons.check, color:border2? Colors.green:Colors.white),
                  style: OutlinedButton.styleFrom(
                     backgroundColor: border2?Colors.white:Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(20))),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      border3 = !border3;
                    });
                  },
                  child: border3
                      ? Text(
                          "Football",
                          style: TextStyle(color: Colors.black),
                        )
                      : Icon(Icons.check, color:border3? Colors.green:Colors.white),
                  style: OutlinedButton.styleFrom(
                     backgroundColor: border3?Colors.white:Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(20))),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      border4 = !border4;
                    });
                  },
                  child: border4
                      ? Text("Soccer", style: TextStyle(color: Colors.black))
                      : Icon(Icons.check, color:border4? Colors.green:Colors.white),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: border4?Colors.white:Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(20))),
                ),
              ],
            );
  }
}
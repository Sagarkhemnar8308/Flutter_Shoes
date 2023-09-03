import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// Import your screen widgets if they are correctly implemented
import 'package:shoes/Blue_screen.dart';
import 'package:shoes/Green_screen.dart';
import 'package:shoes/Option.dart';
import 'package:shoes/Orange_screen.dart';
import 'package:shoes/Red_screen.dart';

class All extends StatefulWidget {
  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
  CarouselController _carouselController = CarouselController();
  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_sharp),)
              ],
            ),
            Option(),
            SizedBox(height: 10,),
            Text("Sneakers", style: TextStyle(color: Colors.black, fontSize: 30)),
            Divider(color: Colors.grey),
            CarouselSlider.builder(
              itemCount: 4,
              carouselController: _carouselController,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedItemIndex = index;
                    });
                  },
                  child: _buildCarouselItem(index),
                );
              },
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCarouselItem(int index) {
    switch (index) {
      case 0:
        return SingleChildScrollView(child: Red_screen());
      case 1:
        return SingleChildScrollView(child: Blue_screen());
      case 2:
        return SingleChildScrollView(child: Green_screen());
      case 3:
        return SingleChildScrollView(child: Orange_screen());
      default:
        return Container();
    }
  }
}

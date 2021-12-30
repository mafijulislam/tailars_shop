import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final List<String> imageList = [
      "https://cdn.pixabay.com/photo/2016/11/18/15/40/boy-1835416__480.jpg",
      "https://cdn.pixabay.com/photo/2018/04/28/18/40/kids-3357943__480.jpg",
      "https://cdn.pixabay.com/photo/2017/11/23/03/17/christmas-2971961__480.jpg",
      "https://cdn.pixabay.com/photo/2018/04/11/22/10/dog-3311925__480.jpg",

    ];
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(

      appBar: AppBar(
        title: Text("Login"),
      ),
body: SafeArea(
  child: SingleChildScrollView(
    child: Column(
      children: [

        Container(
            child: CarouselSlider(
              options: CarouselOptions(),
              items: list
                  .map((item) => Container(
                child: Center(child: Text(item.toString())),
                color: Colors.purpleAccent,
              ))
                  .toList(),
            )),
        Container(
            child: CarouselSlider(
              options: CarouselOptions(),

              items: imageList
                  .map((item) => Container(
                child: Center(
                    child:
                    Image.network(item, fit: BoxFit.cover, width: 1000)),
              ))
                  .toList(),
            )),
        Container(
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 2,
                autoPlay: true,
              ),
              items: imageList
                  .map((item) => Container(
      child: Center(
      child:
      Image.network(item, fit: BoxFit.cover, width: 1000)),
      ))
          .toList(),
      
            )),

      ],
    ),
  ),
),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:tailars_shop/data/productData.dart';
import 'package:tailars_shop/widget_custom/MainDrawer.dart';


import 'DetailsView.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectNavPosiotion = 1;

  final List<String> imaglist = [
    'https://cdn.pixabay.com/photo/2016/11/18/15/40/boy-1835416__480.jpg',
    'https://cdn.pixabay.com/photo/2018/04/28/18/40/kids-3357943__480.jpg',
    'https://cdn.pixabay.com/photo/2017/11/23/03/17/christmas-2971961__480.jpg',
    'https://cdn.pixabay.com/photo/2019/03/07/10/15/attractive-4039822__480.jpg',
    'https://cdn.pixabay.com/photo/2016/03/22/11/24/boy-1272637__340.jpg',
    'https://cdn.pixabay.com/photo/2018/04/28/18/41/kids-3357945__340.jpg',
    'https://cdn.pixabay.com/photo/2017/09/09/11/52/t-shirts-2731768__340.jpg',
    'https://cdn.pixabay.com/photo/2018/04/11/22/10/dog-3311925__480.jpg'
    ];

  var pdata = new productdata();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Home'),

      ),
      backgroundColor: Color(0xffbd2df1),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 150,
              child: CarouselSlider.builder(
                  slideBuilder: (index){
                    return Container(
                      child: Image.network(imaglist[index], fit: BoxFit.fill,),
                    );
                  },
                  slideTransform: CubeTransform(),
                  slideIndicator: CircularSlideIndicator(
                    padding: EdgeInsets.only(bottom: 8)
                  ),
                  autoSliderDelay: Duration(seconds: 5),
                  enableAutoSlider: true,
                  unlimitedMode: true,
                  itemCount: imaglist.length
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: GridView.builder(
                //physics: NeverScrollableScrollPhysics(),
                  controller: new ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                itemCount: pdata.productlist.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:  .80,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10
                  ),
                itemBuilder: (BuildContext context, index){
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsView(pdata.productlist[index])));
                      },
                      child: Card(
                        elevation: 20,
                        child: Column(

                          children: [
                            Container(
                              height: 200,
                              child: Image.network(pdata.productlist[index].imageUrl),
                            ),
                            Text(pdata.productlist[index].title),
                            Text('Price :${pdata.productlist[index].price.toString()}')
                          ],
                        ),
                      ),
                    );
                  }),
            )

          ],
        ),
      ),

    );
  }


}

class AppBars extends AppBar {
  AppBars():super(
    iconTheme: IconThemeData(
      color: Colors.black, //change your color here
    ),
    backgroundColor: Colors.white,
    title: Text(
      "this is app bar",
      style: TextStyle(color: Colors.black),
    ),
    elevation: 0.0,
    automaticallyImplyLeading: false,
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.notifications),
        onPressed: () => null,
      ),
      IconButton(
        icon: Icon(Icons.person),
        onPressed: () => null,
      ),
    ],
  );
}
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

int _current = 0;
List imgList = [
  'assets/shoeimage.jpg',
  'assets/shoeimage.jpg',
  'assets/shoeimage.jpg',
  'assets/shoeimage.jpg',
];
List<String> items = ['1','2','3','4','5'];
List<String> shoeName=["Nike","Puma","Red Tape","Crocs","D&G"];
List<String> shoeText=["AY 12% NY 13%","AY 21% NY 13%","AY 12% NY 13%","AY 12% NY 13%","AY 12% NY 13%"];
class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.search,
                  color: Colors.blue,
                  size: 30.0,
                ),
                Text(
                  'SMOS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                Icon(
                  Icons.person,
                  color: Colors.blue,
                  size: 30.0,
                ),
              ],
            ),
            Divider(
              color: Colors.blue,
              thickness: 5,
            ),
            CarouselSlider(
              height: 100.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                    //  width: MediaQuery.of(context).size.width,
                      width:200,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Image.asset(
                        imgUrl,
                        fit: BoxFit.contain,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Divider(
              color: Colors.blue,
              thickness: 5,
            ),
            Expanded(
              child: Container(
                  child: Scrollbar(
                    child: new ListView.builder
                      (
                        itemCount: items.length,
                        shrinkWrap: true,

                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext ctxt, int index) => buildBody(ctxt, index)
                    ),
                  ),
              ),
            ),
            Divider(
              color: Colors.blue,
              thickness: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  Icons.attach_money,
                  color: Colors.white,
                  size: 30.0,
                ),
                Icon(
                  Icons.folder,
                  color: Colors.white,
                  size: 30.0,
                ),
                Icon(
                  Icons.chat,
                  color: Colors.white,
                  size: 30.0,
                ),
                Icon(
                  Icons.assignment,
                  color: Colors.white,
                  size: 30.0,
                ),
              ],
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
Widget buildBody(BuildContext ctxt, int index) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        shoeName[index],
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
      new Row(
        children: <Widget>[

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //  width: MediaQuery.of(context).size.width,
                width:100,
                //height:80,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                   mainAxisSize: MainAxisSize.max,
                  children:<Widget>[
                    Image.asset(
                      'assets/shoeimage.jpg',
                      fit: BoxFit.fill,
                    ),
                    Text(
                      shoeText[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //  width: MediaQuery.of(context).size.width,
                width:100,
                //height:80,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children:<Widget>[
                    Image.asset(
                      'assets/shoeimage.jpg',
                      fit: BoxFit.fill,
                    ),
                    Text(
                      shoeText[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //  width: MediaQuery.of(context).size.width,
                width:100,
                //height:80,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children:<Widget>[
                    Image.asset(
                      'assets/shoeimage.jpg',
                      fit: BoxFit.fill,
                    ),
                    Text(
                      shoeText[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
import 'package:flutter/material.dart';
import 'package:mixflix/components/trending_list.dart';
import 'package:mixflix/components/horizontal_list.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Color(0xffe50914),
        centerTitle: true,
        title: Text(
          "MIXFLIX",
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView()
      ),
      body: ListView(children: <Widget>[
        Container(
          height: 200,
          child: Carousel(
            images: [
              AssetImage("images/starwars.jpg"),
              AssetImage("images/avengers.jpg"),
              AssetImage("images/deadpool.jpg"),
              AssetImage("images/wolve.jpg"),
              AssetImage("images/interstellar.jpg"),
            ],
            animationDuration: Duration(milliseconds: 500),
            autoplayDuration: Duration(seconds: 5),
            animationCurve: Curves.easeInOut,
            showIndicator: false,
            boxFit: BoxFit.cover,
          ),
        ),
        Row(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Trending",
                style: TextStyle(fontSize: 18, color: Colors.white)),
          ),
          Icon(
            Icons.arrow_forward,
            color: Colors.white,
          )
        ]),
        Trending_List(),
        Row(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Popular",
                style: TextStyle(fontSize: 18, color: Colors.white)),
          ),
          Icon(
            Icons.arrow_forward,
            color: Colors.white,
          )
        ]),
        Horizontal_list(),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.withOpacity(0.4),
            child: Center(
              child: Text("COPYRIGHT MIXFLIX",
                  style: TextStyle(fontSize: 12, color: Colors.grey)),
            ),
          ),
        )
      ]),
    );
  }
}

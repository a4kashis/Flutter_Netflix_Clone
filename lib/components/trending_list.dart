import 'package:flutter/material.dart';

class Trending_List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          HorizontalSlider(
            image_caption: "NARCOS",
            image_location: "images/narcos.jpg",
          ),
          HorizontalSlider(
            image_caption: "FOUR MORE SHOTS",
            image_location: "images/fms.jpg",
          ),
          HorizontalSlider(
            image_caption: "SACRED GAMES",
            image_location: "images/sacred.jpg",
          ),
          HorizontalSlider(
            image_caption: "MONEY HEIST",
            image_location: "images/moneyheist.jpg",
          ),
        ],
      ),
    );
  }
}

class HorizontalSlider extends StatelessWidget {
  final image_location;
  final image_caption;

  HorizontalSlider({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new ClipOval(
                child: Image.asset(image_location,height:120,width: 120,fit: BoxFit.cover,)),
          )
        ]),
        Text(
          image_caption,
          style: TextStyle(
          color: Colors.white, fontSize: 13, fontFamily: 'Montserrat',
          ))
      ],
    );
  }
}

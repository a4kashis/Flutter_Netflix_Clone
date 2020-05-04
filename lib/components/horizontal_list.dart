import 'package:flutter/material.dart';
import 'package:mixflix/screens/movie_details.dart';

class Horizontal_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          HorizontalSlider(
            image_caption: "LOVE AAJ KAL",
            image_location: "images/LoveAajKal.jpg",
          ),
          HorizontalSlider(
            image_caption: "THE FLASH",
            image_location: "images/flash.jpg",
          ),
          HorizontalSlider(
            image_caption: "MONEY HEIST",
            image_location: "images/moneyheist.jpg",
          ),
          HorizontalSlider(
            image_caption: "RAANJHANA",
            image_location: "images/raanjhana.jpg",
          ),
          HorizontalSlider(
            image_caption: "SEA FEVER",
            image_location: "images/seafever.jpg",
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
        Expanded(
          child: Row(children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new Movie_Details(
                            img_src: image_location,
                            img_caption: image_caption)));
              },
              child: new Container(
                  height: 200,
                  margin: const EdgeInsets.all(2.0),
                  child: Hero(
                    tag: image_location,
                    child: Image.asset(
                      image_location,
                      width: 130,
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
          ]),
        ),
        Container(
            child: Text(
          image_caption,
          style: TextStyle(color: Colors.white, fontSize: 15),
        )),
      ],
    );
  }
}

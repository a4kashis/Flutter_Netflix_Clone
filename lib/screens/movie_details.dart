import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mixflix/components/horizontal_list.dart';

class Movie_Details extends StatelessWidget {
  final img_src;
  final img_caption;

  Movie_Details({this.img_caption, this.img_src});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Stack(
            fit: StackFit.passthrough,
            children: <Widget>[
              Container(
                transform: Matrix4.translationValues(0, -30, 0),
                height: 500,
                child: GridTile(
                  child: Container(
                      child: Hero(
                          tag: img_src,
                          child: Image.asset(
                            img_src,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ))),
                  footer: Stack(children: <Widget>[
                    Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            Colors.black.withOpacity(0.2),
                            Colors.black.withOpacity(1)
                          ])),
                      child: Text(
                        " $img_caption",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
                ),
              ),
              Positioned(
                  right: 20,
                  bottom: 25,
                  child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "images/play.png",
                        height: 80,
                      ))),
              SafeArea(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.share,
                            color: Colors.white,
                          ))
                    ]),
              ),
            ],
          ),
          Text(
            "  3,292 people watching",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          Container(
            padding: EdgeInsets.only(top: 8),
            child: Row(children: <Widget>[
              Text(
                " 9. \u2078   ",
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
              Icon(Icons.star, color: Colors.red),
              Icon(Icons.star, color: Colors.red),
              Icon(Icons.star, color: Colors.red),
              Icon(Icons.star, color: Colors.grey),
              Icon(Icons.star, color: Colors.grey),
            ]),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum p",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Text(
            "  Cast & Crew",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Container(
            height: 150,
            child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(8),
                children: <Widget>[
                  Container(child: Image.asset("images/profile.png"),margin:EdgeInsets.all(6) ),
                  Container(child: Image.asset("images/profile.png"),margin:EdgeInsets.all(6)),
                  Container(child: Image.asset("images/profile.png"),margin:EdgeInsets.all(6) ),
                  Container(child: Image.asset("images/profile.png"),margin:EdgeInsets.all(6) ),
                ]),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget{

  String namePlace;
  int star;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.star, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),

      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611)
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),

      child: Icon(
          Icons.star_border,
          color: Color(0xFFf2C611)
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),

      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611)
      ),
    );

    final text = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
          descriptionPlace,
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w300
        ),
        textAlign: TextAlign.center,
      )
    );

    final tittle_stars = Row(
      children: <Widget>[ //children elementos que van dentro del row
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
              namePlace,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
          ),
        ),

        Row(
          children: [
            star,
            star,
            star,
            star,
            star_half,
          ],
        ),
      ],
    );

    return Column(
      children: <Widget>[
        tittle_stars,
        text
      ],
    );
  }
}
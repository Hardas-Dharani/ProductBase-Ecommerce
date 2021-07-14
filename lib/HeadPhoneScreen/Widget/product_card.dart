import 'package:Animated_Navigation_Drawer/HeadPhoneScreen/style.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imgUrl;
  final String name;
  final int color;
  const ProductCard({Key key, this.color, this.imgUrl, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      // ignore: sized_box_for_whitespace
      child: Container(
        width: 165,
        height: 240,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, bottom: 20),
                child: Container(
                  height: 170,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            offset: const Offset(0, 10),
                            blurRadius: 12)
                      ]),
                ),
              ),
            ),
            Positioned(
                right: 2,
                top: -2,
                child: Image.network(
                  imgUrl,
                  width: 67,
                  height: 150,
                )),
            Positioned(
                left: 30,
                bottom: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: producttitleStyle,
                    ),
                    Text(
                      "colors $color",
                      style: productsubtitleStyle,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

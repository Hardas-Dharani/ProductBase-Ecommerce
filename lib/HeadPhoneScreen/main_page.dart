import 'package:Animated_Navigation_Drawer/HeadPhoneScreen/Widget/navbar.dart';
import 'package:Animated_Navigation_Drawer/HeadPhoneScreen/customdata.dart';
import 'package:Animated_Navigation_Drawer/HeadPhoneScreen/model/model.dart';
import 'package:Animated_Navigation_Drawer/HeadPhoneScreen/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'Widget/product_card.dart';

class HeadphonePage extends StatefulWidget {
  @override
  State<HeadphonePage> createState() => _HeadphonePageState();
}

class _HeadphonePageState extends State<HeadphonePage> {
  int _currentindex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentindex = 0;
  }

  void changepage(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 30, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      onPressed: () => NavBar(), icon: const Icon(Icons.menu)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart_outlined))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "Shop",
                style: headingStyle,
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              width: double.infinity,
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 22),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.12),
                        offset: const Offset(0, 10),
                        blurRadius: 30)
                  ]),
              child: const Center(
                child: Padding(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search...",
                        hintStyle: searchbarStyle,
                        suffixIcon: Icon(CustomIcons.search)),
                  ),
                  padding: EdgeInsets.only(left: 18, right: 12),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "Headphones",
                style: headingStyle,
              ),
            ),
            Container(
              height: 240,
              child: ListView.builder(
                itemCount: product.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var products = product[index];
                  return ProductCard(
                      imgUrl: products.image,
                      name: products.title,
                      color: products.color);
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 160,
              margin: const EdgeInsets.symmetric(horizontal: 22),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      "Speakers",
                      style: headingStyle,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 6),
                                blurRadius: 6,
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 22, top: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              const Text(
                                "Ralis",
                                style: producttitleStyle,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                "haute Red slate",
                                style: speakerdesStyle,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Image.network(
                      "https://www.nicepng.com/png/full/10-100639_speakers-png.png",
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                    ),
                    right: 15,
                    top: -1,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: BubbleBottomBar(
          backgroundColor: Colors.transparent,
          opacity: 1,
          elevation: 0,
          onTap: changepage,
          currentIndex: _currentindex,
          // ignore: prefer_const_literals_to_create_immutables
          items: <BubbleBottomBarItem>[
            const BubbleBottomBarItem(
                backgroundColor: Colors.black,
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: bottombaritemStyle,
                )),
            const BubbleBottomBarItem(
                backgroundColor: Colors.black,
                icon: Icon(
                  Icons.headphones,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  Icons.headphones,
                  color: Colors.white,
                ),
                title: Text(
                  "Favorite",
                  style: bottombaritemStyle,
                )),
            const BubbleBottomBarItem(
                backgroundColor: Colors.black,
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  "Cart",
                  style: bottombaritemStyle,
                )),
            const BubbleBottomBarItem(
                backgroundColor: Colors.black,
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text(
                  "Person",
                  style: bottombaritemStyle,
                ))
          ],
          // onTap: changepage,
        ),
      ),
    );
  }
}

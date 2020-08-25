import 'package:flutter/material.dart';
import 'package:flutter_tests/animation/fadeAnimation.dart';
import 'package:flutter_tests/pages/categoryPage.dart';

class Shop extends StatefulWidget {
  Shop({Key key}) : super(key: key);
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<Object> categories = [
    {'image': 'assets/images/beauty.jpg', 'title': 'Beauty'},
    {'image': 'assets/images/clothes.jpg', 'title': 'Clothes'},
    {'image': 'assets/images/perfume.jpg', 'title': 'Perfume'},
    {'image': 'assets/images/glass.jpg', 'title': 'Glasses'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              FadeAnimation(
                1,
                Container(
                  height: 500,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/b.jpg'),
                    fit: BoxFit.cover,
                  )),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.2)
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              FadeAnimation(
                                1.2,
                                IconButton(
                                  icon: Icon(
                                    Icons.shopping_cart,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              FadeAnimation(
                                1.3,
                                IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  FadeAnimation(
                                    1.5,
                                    Text(
                                      "Our New Products",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  FadeAnimation(
                                      1.7,
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "VIEW MORE",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Icon(Icons.arrow_forward_ios,
                                              color: Colors.white, size: 13)
                                        ],
                                      ))
                                ]),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              FadeAnimation(
                1.4,
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Categories',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 18),
                          ),
                          Text(
                            'All',
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            // ...categories.map((item) => makeCategory(item)).toList(),
                            makeCategory(
                                image: 'assets/images/beauty.jpg',
                                title: 'Beauty',
                                tag: 'beauty'),
                            makeCategory(
                                image: 'assets/images/clothes.jpg',
                                title: 'Clothes',
                                tag: 'clothes'),
                            makeCategory(
                                image: 'assets/images/perfume.jpg',
                                title: 'Perfume',
                                tag: 'perfume'),
                            makeCategory(
                                image: 'assets/images/glass.jpg',
                                title: 'Glasses',
                                tag: 'glasses')
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Bestsellers by Categories',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 18),
                          ),
                          Text(
                            'All',
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            // ...categories.map((item) => makeCategory(item)).toList(),
                            makeBestSeller(
                                image: 'assets/images/tech.jpg', title: 'Tech'),
                            makeBestSeller(
                                image: 'assets/images/watch.jpg',
                                title: 'Watch'),
                            makeBestSeller(
                                image: 'assets/images/perfume.jpg',
                                title: 'Perfume'),
                            makeBestSeller(
                                image: 'assets/images/glass.jpg',
                                title: 'Glasses')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget makeCategory({image, title, tag}) {
    return AspectRatio(
      aspectRatio: 2 / 2.2,
      child: Hero(
        tag: tag,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CategoryPage(image: image, title: title, tag: tag),
                ));
          },
          child: Material(
            child: Container(
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.0)
                  ]),
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget makeBestSeller({image, title, price}) {
    return AspectRatio(
      aspectRatio: 3 / 2.2,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.0)
            ]),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}

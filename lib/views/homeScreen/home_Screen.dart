import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoppe/views/cart/shoppingCart.dart';
import 'package:shoppe/views/messageListScreen/list_screen.dart';

final List<String> imgList = [
  "https://img3.junaroad.com/uiproducts/18545123/pri_175_p-1664255492.jpg",
  "https://img3.junaroad.com/uiproducts/18545123/pri_175_p-1664255492.jpg",
  "https://img3.junaroad.com/uiproducts/18545123/pri_175_p-1664255492.jpg",
  "https://img3.junaroad.com/uiproducts/18545123/pri_175_p-1664255492.jpg",
];

class home_Screen extends StatelessWidget {
  home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          height: 20,
          child: Image.asset(
            "assets/Home Shoppe Logo.png",
            fit: BoxFit.cover,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => msglist())),
            child: Icon(
              Icons.chat_outlined,
              color: Color(0xff282828),
              size: 25,
            ),
          ),
          SizedBox(width: 15),
          GestureDetector(
            onTap: ()=> Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => shoppingCart())),
            child: Icon(
              Icons.shopping_cart,
              color: Color(0xff282828),
              size: 25,
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text("Find your style",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  letterSpacing: 1.5,
                  fontFamily: "ubuntu"
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.3,
                enlargeCenterPage: true,
                viewportFraction: 0.6,
                scrollDirection: Axis.horizontal,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                autoPlay: true,
              ),
              items: imgList
                  .map((item) => Padding(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(item),
                        ),
                  ))
                  .toList(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Most Popular",
                    style: TextStyle(
                      color: Color(0xff282828),
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        fontFamily: "ubuntu"
                    ),
                  ),
                  Text("See all",
                    style: TextStyle(
                        color: Color(0xfff79e72),
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        letterSpacing: 1.5,
                        fontFamily: "ubuntu"
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    decoration: BoxDecoration(
                        color: Color(0xfff79e72),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                height: 100,
                                width:
                                    MediaQuery.of(context).size.width / 2 - 20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Image.network(
                                    "https://static.magicpin.com/storage/blog/images/myntra-online-shopping-for-mens_Casual_GreenShirt.jpg",
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width / 2 - 20,
                              /*decoration: BoxDecoration(
                                  color: Color(0xfff79e72),
                                  borderRadius: BorderRadius.circular(15)),*/
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Ock Love Women's Removable Hooded Faux Leather Moto Biker Jacket",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "100% POLYURETHANE(shell) 100% POLYESTER(lining) 75% POLYESTER 25% COTTON (SWEATER), Faux leather material for style and comfort / 2 pockets of front, 2-For-One Hooded denim style faux leather jacket, Button detail on waist / Detail stitching at sides, HAND WASH ONLY / DO NOT BLEACH / LINE DRY / DO NOT IRON",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 3,
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                    Divider(
                                      thickness: 2,
                                      height: 2,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "₹ 799",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.share_rounded,
                                          color: Colors.black,
                                          size: 18,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              childCount: 10,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.5),
            ),
          ),
        ],
      ),
    );
  }

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            'No. ${imgList.indexOf(item)} image',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();
}

class Category {
  final String image;
  final String name;

  Category({required this.image, required this.name});
}
